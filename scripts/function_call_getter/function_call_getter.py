import os
import json
import re
from function_call_getter._types import *
from function_call_getter.utils import *
from files_provider.files_provider import DataCategory, DataPackArtifactPath

regex = r"^(?!#)(?:\s|\S)*?function(?:\s|\\)*(#?[a-z0-9-\/:_\.$\(\)]+)"

class FunctionCallGetter:

    error = False
    __cache__: FeatureSet = None

    def build_function_call_tree(self, artifact_paths: list[DataPackArtifactPath]) -> FeatureSet:
        self.error = False

        if not self.__cache__:


            features: list[Feature] = []

            for artifact_path in artifact_paths:
                if artifact_path.category == DataCategory.FUN_TAG:
                    with open(artifact_path.real_path, mode='r', encoding='utf-8') as f:
                        contents = json.load(f)
                        if contents.get('feature', False):
                            mc_path = resolve_real_path(artifact_path.real_path)
                            feature = Feature(path=mc_path, namespace=artifact_path.namespace, __browsed_functions__=[], called_functions=[], __unread_functions__=contents.get('values', False))
                            features.append(feature)

            for feature in features:
                for fun in feature.__unread_functions__:
                    function = build_abstract_function(fun, feature)
                    # TODO Currently doesn't support if the features references function tags
                    feature.called_functions.append(function)
                    self.browse_function(function)

            self.__cache__ = FeatureSet(features)

        return self.__cache__


    def browse_function_locator(self, function: AbstractFunction):
        if function.path not in function.feature.__browsed_functions__:
            if isinstance(function, FunctionTag):
                self.browse_function_tag(function)
            else:
                self.browse_function(function)

    def browse_function_tag(self, function: FunctionTag):
        with open(os.path.join(function.real_path), encoding="utf-8") as file:
            content = json.load(file).get('values', False)
            function.content = content
            for fun in content:
                self.browse_function_locator(build_abstract_function(fun, function.feature))


    def browse_function(self, function: Function):
        result: list[AbstractFunction] = []
        with open(function.real_path, encoding="utf-8") as file:
            content = file.read()
            # Inline multi-lines commands
            content = content.replace(r"\\\s*" + os.linesep, "")
            function.content = content.splitlines()
            for line in function.content:
                funs: list[str] = re.findall(regex, line)
                for fun in funs:
                    # Remove function call with macro variable inside
                    if "$" not in fun:
                        called_function: AbstractFunction = build_abstract_function(fun, function.feature)
                        result.append(called_function)
            function.called_functions = result
            function.feature.__browsed_functions__.append(function.path)

        for fun in result:
            self.browse_function_locator(fun)
