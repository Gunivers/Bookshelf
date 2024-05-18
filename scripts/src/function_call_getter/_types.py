from dataclasses import dataclass
from pathlib import Path
from typing import Callable, Type
from files_provider._types import Function, Artifact, Tag, Feature, build_artifact
from files_provider.utils import resolve_function_path

@dataclass
class Visitable:
    def __accept__(self, visitor: 'Visitor') -> None:
        pass

@dataclass
class VisitableFeatureSet(Visitable):
    features: list['VisitableFeature']

    def __accept__(self, visitor: 'Visitor') -> None:
        for feature in self.features:
            visitor.visit(feature)

@dataclass
class VisitableFeature(Visitable):
    name: str
    namespace: str
    mc_path: str
    called_functions: list['VisitableAbstractFunction']
    real_path: Path
    __browsed_functions__: list[Function]
    __unread_functions__: list[Function]

    def __init__(self, feature: Feature):
        self.name = feature.name
        self.namespace = feature.namespace
        self.mc_path = feature.mc_path
        self.real_path = feature.real_path
        self.called_functions = []
        self.__browsed_functions__ = []
        self.__unread_functions__ = [build_artifact(resolve_function_path(fun)) for fun in feature._content.get('values', False)]

    def __accept__(self, visitor: 'Visitor') -> None:
        for called_function in self.called_functions:
            visitor.visit(called_function)

    def __hash__(self):
        return hash(self.mc_path)

    def __eq__(self, other: object):
        if not isinstance(other, VisitableFeature):
            return False
        return self.mc_path == other.mc_path

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

    def __hash__(self):
        return hash(self.real_path)

    def __eq__(self, other: object):
        if not isinstance(other, VisitableAbstractFunction):
            return False
        return self.real_path == other.real_path

@dataclass
class VisitableFunctionTag(VisitableAbstractFunction):

    content: dict

    def __init__(self, tag: Tag, feature: VisitableFeature):
        super().__init__(tag, feature)
        self.content = tag.get_content()

    def __hash__(self):
        return hash(self.real_path)

    def __eq__(self, other: object):
        if not isinstance(other, VisitableAbstractFunction):
            return False
        return self.real_path == other.real_path

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
