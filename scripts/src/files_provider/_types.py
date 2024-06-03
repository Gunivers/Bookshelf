from abc import ABC, abstractmethod
from dataclasses import dataclass
from enum import Enum
import json
import os
from pathlib import Path
from typing import Optional


class Artifact[T](ABC):
    namespace: str
    name: str
    real_path: Path
    mc_path: str
    _content: T

    def __init__(self, real_path: Path, mc_path: str) -> None:
        self.real_path = real_path
        self.mc_path = mc_path
        self.namespace = mc_path.split(":")[0]
        self.name = mc_path.split(":")[1]
        self._content = None

    @abstractmethod
    def __load__(self) -> T:
        pass

    def get_content(self) -> T:
        if not self._content:
            self._content = self.__load__()
        return self._content


class Function(Artifact[list[str]]):

    def __init__(self, real_path: Path, mc_path: str):
        super().__init__(real_path, mc_path)

    def __load__(self) -> list[str]:
        with open(self.real_path, mode='r', encoding='utf-8') as f:
            return f.readlines()


class Tag(Artifact[dict]):

    def __init__(self, real_path: Path, mc_path: str):
        super().__init__(real_path, mc_path)

    def __load__(self) -> dict:
        with open(self.real_path, mode='r', encoding='utf-8') as f:
            return json.load(f)


class Feature(Artifact[dict]):

    def __init__(self, real_path: Path, mc_path: str, content: dict):
        super().__init__(real_path, mc_path)
        self._content = content

    def __load__(self) -> dict:
        return self._content


@dataclass
class DataCategoryValue:
    path_fragment: str
    clazz: type
    extension: str
    mc_path_prefix: str

class DataCategory(Enum):
    FUNCTION = DataCategoryValue("functions", Function, ".mcfunction", "#")
    FUN_TAG = DataCategoryValue(os.path.join("tags", "functions"), Tag, ".json", "")


def build_artifact(real_path: Path) -> Optional[Artifact]:
    from files_provider.utils import parse_real_path
    result = parse_real_path(real_path)
    if result:
        return result[1].value.clazz(real_path, result[0])
    return None


@dataclass
class Module:
    namespace: str
    path: Path

    def __hash__(self):
        return hash(self.path)

@dataclass
class Datapack:
    name: str
    path: Path

    def __hash__(self):
        return hash(self.path)
