import os
import json
import definitions
import re
from _types import *
from utils import *

regex = r"^(?!#)(?:\s|\S)*?function(?:\s|\\)*(#?[a-z0-9-\/:_\.$\(\)]+)"

class FunctionCallGetter:

    error = False
    __cache__: FeatureSet = None

    def build_function_call_tree(self, workspace: str, filepaths: list[str]) -> FeatureSet:
        self.error = False

        if not self.__cache__:


            features: list[Feature] = []

            for filePath in filepaths:
                if self.is_valid_tag(filePath):
                    real_path = os.path.join(workspace, filePath)
                    with open(real_path, 'r', encoding='utf-8') as f:
                        contents = json.load(f)
                        if contents.get('feature', False):
                            mc_path = resolve_real_path(filePath)
                            feature = Feature(path=mc_path, namespace=mc_path.split(":")[0], __browsed_functions__=[], called_functions=[], __unread_functions__=contents.get('values', False))
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

    def is_valid_tag(self, filepath: str) -> bool:
        libs = "|".join([re.escape(lib) for lib in definitions.BOOKSHELF_LIBS])
        return re.match(f"datapacks/(?:{libs})/data/.*?/tags/functions/.*\\.json", filepath)
