from dataclasses import dataclass
from function_call_getter.utils import resolve_function_path
from typing import Callable, Type

@dataclass
class ResourceLocator:
    path: str
    extension: str

@dataclass
class Visitable:
    def __accept__(self, visitor: 'Visitor') -> None:
        pass

@dataclass
class FeatureSet(Visitable):
    features: list['Feature']

    def __accept__(self, visitor: 'Visitor') -> None:
        for feature in self.features:
            visitor.visit(feature)

@dataclass
class Feature(Visitable):
    namespace: str
    path: str
    called_functions: list['AbstractFunction']
    __browsed_functions__: list[str]
    __unread_functions__: list[str]

    def __accept__(self, visitor: 'Visitor') -> None:
        for called_function in self.called_functions:
            visitor.visit(called_function)

@dataclass
class AbstractFunction(Visitable):
    namespace: str
    path: str
    real_path: str
    feature: Feature
    called_functions: list['AbstractFunction']
    resource_locator: ResourceLocator

    def __init__(self, path: str, feature: Feature):
        real_path = resolve_function_path(path, self.resource_locator)
        if(real_path is not None):
            self.real_path = real_path
        self.feature = feature
        self.called_functions = []

    def __accept__(self, visitor: 'Visitor') -> None:
        for called_function in self.called_functions:
            visitor.visit(called_function)

@dataclass
class Function(AbstractFunction):

    content: list[str]

    def __init__(self, path: str, feature: Feature):
        self.resource_locator = ResourceLocator("/functions/", ".mcfunction",)
        super().__init__(path, feature)
        self.path = path
        self.namespace = self.path.split(":")[0]

@dataclass
class FunctionTag(AbstractFunction):

    content: dict

    def __init__(self, path: str, feature: Feature):
        self.resource_locator = ResourceLocator("/tags/functions/", ".json")
        self.path = path[1:]
        super().__init__(self.path, feature)
        self.namespace = self.path.split(":")[0]

def build_abstract_function(function: str, feature: Feature) -> AbstractFunction:
    if function.startswith("#"):
        return FunctionTag(function, feature)
    else:
        return Function(function, feature)

class Visitor:

    match_types: list[Type[Visitable]] = []
    callback: Callable[[Visitable], None]

    def __init__(self, match_types: list[Type[Visitable]] , callback: Callable[[Visitable], bool]):
        """
        :param match_types: List of types on which the callback will be called
        :param callback: Callback function, takes a Visitable and return a boolean. If the return is True, prune the visit
        """
        self.callback = callback
        self.match_types = match_types

    def visit(self, visitable: Visitable) -> None:
        prune = False
        for match_type in self.match_types:
            if isinstance(visitable, match_type):
                prune = self.callback(visitable)
        if not prune:
            visitable.__accept__(self)
