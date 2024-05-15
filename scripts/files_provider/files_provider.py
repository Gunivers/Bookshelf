from dataclasses import dataclass
from enum import Enum
import os
from pathlib import Path
from typing import Callable
import subprocess
import definitions


class DataCategory(Enum):
    FUNCTION = "functions"
    FUN_TAG = os.path.join("tags", "functions")

@dataclass
class DataPackArtifactPath:
    namespace: str
    name: str
    category: DataCategory
    real_path: Path

@dataclass
class Module:
    namespace: str
    path: Path

    def __hash__(self):
        return hash(self.path)


class Manager[T]:

    _content: list[T]

    def map[U](self, function: Callable[[T], U]):
        self.files = list(map(function, self.files))

    def filter(self, function: Callable[[T], bool]):
        self.files = list(filter(function, self.files))

    def get(self) -> list[T]:
        return self._content


class DataPackArtifactManager(Manager[DataPackArtifactPath]):

    def __init__(self, artifacts: list[DataPackArtifactPath]):
        self._content = artifacts

    def get_modules(self) -> list[Module]:
        modules: set[Module] = set()
        for artifact in self._content:
            modules.add(Module(artifact.namespace, Path(artifact.real_path.parents[2])))
        return modules


class FilePathsManager(Manager[Path]):

    def __init__(self, files: list[Path]):
        self._content = files

    def only_dp_artifacts(self) -> DataPackArtifactManager:
        from function_call_getter.utils import to_relative_path
        file_paths: list[Path] = list(filter(lambda file_path: file_path.relative_to(definitions.ROOT_DIR).parts[0] == 'datapacks', self._content))
        result: list[DataPackArtifactPath] = []
        for file_path in file_paths:
            relative_path: Path = to_relative_path(file_path)
            cat = None
            for category in DataCategory:
                if category.value in str(relative_path):
                    cat = category
            result.append(DataPackArtifactPath(Path(relative_path.parts[3]), file_path.name, cat, file_path))
        return DataPackArtifactManager(result)



class FilesProvider:

    def get_all_files_not_upstreamed(self) -> FilePathsManager:
        headSHA = subprocess.check_output("git rev-parse HEAD", encoding='utf-8', shell=True)
        baseSHA = subprocess.check_output("git rev-parse origin/master", encoding='utf-8', shell=True)

        gitLogCommand = f"git diff --name-only {baseSHA}...{headSHA}"
        result = subprocess.check_output(gitLogCommand, encoding='utf-8', shell=True)
        return FilePathsManager(list(map(lambda path: Path(os.path.join(definitions.ROOT_DIR, path)), result.splitlines())))
