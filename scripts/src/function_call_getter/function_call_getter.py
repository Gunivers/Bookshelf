import os
import json
import re
from function_call_getter._types import *
from files_provider.utils import resolve_function_path

regex = r"^(?!#)(?:\s|\S)*?function(?:\s|\\)*(#?[a-z0-9-\/:_\.$\(\)]+)"

class FunctionCallGetter:

    error = False
    __cache__: VisitableFeatureSet = None

    def build_function_call_tree(self, features: list[Feature]) -> VisitableFeatureSet:
        self.error = False

        if not self.__cache__:

            visitableFeatures: list[VisitableFeature] = []

            for feature in features:
                feature = VisitableFeature(feature)
                for fun in feature.__unread_functions__:
                    function = build_abstract_function(fun, feature)
                    feature.called_functions.append(function)
                    self.browse_function_locator(function)
                visitableFeatures.append(feature)

            self.__cache__ = VisitableFeatureSet(visitableFeatures)

        return self.__cache__


    def browse_function_locator(self, function: VisitableAbstractFunction):
        if function.mc_path not in function.feature.__browsed_functions__:
            if isinstance(function, VisitableFunctionTag):
                self.browse_function_tag(function)
            else:
                self.browse_function(function)

    def browse_function_tag(self, function: VisitableFunctionTag):
        with open(os.path.join(function.real_path), encoding="utf-8") as file:
            content = json.load(file).get('values', False)
            for fun in content:
                artifact: Artifact = build_artifact(resolve_function_path(fun))
                artifact.get_content()
                self.browse_function_locator(build_abstract_function(artifact, function.feature))


    def browse_function(self, function: VisitableFunction):
        result: list[VisitableAbstractFunction] = []
        # Inline multi-lines commands
        content = "\n".join(function.content)
        content = content.replace(r"\\\s*" + os.linesep, "")
        function.content = content.splitlines()
        for line in function.content:
            funs: list[str] = re.findall(regex, line)
            for fun in funs:
                # Remove function call with macro variable inside
                if "$" not in fun:
                    from files_provider._types import build_artifact
                    artifact: Artifact = build_artifact(resolve_function_path(fun))
                    artifact.get_content()
                    visitable_called_function: VisitableAbstractFunction = build_abstract_function(artifact, function.feature)
                    result.append(visitable_called_function)
            function.called_functions = result
            function.feature.__browsed_functions__.append(function.mc_path)

        for fun in result:
            self.browse_function_locator(fun)
