from dataclasses import dataclass
from typing import Callable, Type
from files_provider._types import Function, Artifact, Tag, Feature, build_artifact
from files_provider.utils import resolve_function_path

@dataclass
class Visitable:
    def __accept__(self, visitor: 'Visitor') -> None:
        pass

@dataclass
class FeatureSet(Visitable):
    features: list['VisitableFeature']

    def __accept__(self, visitor: 'Visitor') -> None:
        for feature in self.features:
            visitor.visit(feature)

@dataclass
class VisitableFeature(Visitable):
    namespace: str
    mc_path: str
    called_functions: list['VisitableAbstractFunction']
    __browsed_functions__: list[Function]
    __unread_functions__: list[Function]

    def __init__(self, feature: Feature):
        self.namespace = feature.namespace
        self.mc_path = feature.mc_path
        self.called_functions = []
        self.__browsed_functions__ = []
        self.__unread_functions__ = [build_artifact(resolve_function_path(fun)) for fun in feature._content.get('values', False)]

    def __accept__(self, visitor: 'Visitor') -> None:
        for called_function in self.called_functions:
            visitor.visit(called_function)

@dataclass
class VisitableAbstractFunction(Visitable):
    namespace: str
    mc_path: str
    real_path: str
    feature: VisitableFeature
    called_functions: list['VisitableAbstractFunction']

    def __init__(self, artifact: Artifact, feature: VisitableFeature):
        self.real_path = artifact.real_path
        self.namespace = artifact.namespace
        self.mc_path = artifact.mc_path
        self.feature = feature
        self.called_functions = []

    def __accept__(self, visitor: 'Visitor') -> None:
        for called_function in self.called_functions:
            visitor.visit(called_function)

@dataclass
class VisitableFunction(VisitableAbstractFunction):

    content: list[str]

    def __init__(self, function: Function, feature: VisitableFeature):
        super().__init__(function, feature)
        self.content = function.get_content()

@dataclass
class VisitableFunctionTag(VisitableAbstractFunction):

    content: dict

    def __init__(self, tag: Tag, feature: VisitableFeature):
        super().__init__(tag, feature)
        self.content = tag.get_content()

def build_abstract_function(artifact: Artifact, feature: VisitableFeature) -> VisitableAbstractFunction:
    if isinstance(artifact, Tag):
        return VisitableFunctionTag(artifact, feature)
    else:
        return VisitableFunction(artifact, feature)

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
