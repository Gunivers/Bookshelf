from dataclasses import dataclass
import os
from pathlib import Path
from typing import Callable
import subprocess
import definitions
import glob
from typing import cast
from files_provider._types import *



class Manager[T]:

    _content: list[T]

    def map[U](self, function: Callable[[T], U]):
        self.files = list(map(function, self.files))

    def filter(self, function: Callable[[T], bool]):
        self.files = list(filter(function, self.files))

    def get(self) -> list[T]:
        return self._content


@dataclass
class ModuleManager(Manager[Module]):

    def __init__(self, modules: list[Module]):
        self._content = modules

    def get_all_features(self) -> list[Feature]:
        features: list[Feature] = []
        for module in self._content:
            for file in glob.glob("/tags/function/**/*.json", module.path):
                artifact = build_artifact(Path(file))
                artifact.get_content()
                if isinstance(Tag, artifact) and cast(Tag, artifact)._content.get('values', False):
                    features.append(Feature(artifact.real_path, artifact.mc_path, artifact._content))



class ArtifactManager(Manager[Artifact]):

    def __init__(self, artifacts: list[Artifact]):
        self._content = artifacts

    def get_modules(self) -> list[Module]:
        modules: set[Module] = set()
        for artifact in self._content:
            modules.add(Module(artifact.namespace, Path(artifact.real_path.parents[2])))
        return modules

    def get_features(self) -> list[Feature]:
        features: list[Feature] = []
        for artifact in self._content:
            if isinstance(artifact, Tag) and cast(Tag, artifact).get_content().get('values', False):
                features.append(artifact)
        return features

class FilePathsManager(Manager[Path]):

    def __init__(self, files: list[Path]):
        self._content = files

    def only_dp_artifacts(self) -> ArtifactManager:
        file_paths: list[Path] = list(filter(lambda file_path: file_path.relative_to(definitions.ROOT_DIR).parts[0] == 'datapacks', self._content))
        result: list[Artifact] = []
        for file_path in file_paths:
            result.append(build_artifact(file_path))
        return ArtifactManager(result)



class FilesProvider:

    def get_all_files_not_upstreamed(self) -> FilePathsManager:
        headSHA = subprocess.check_output("git rev-parse HEAD", encoding='utf-8', shell=True)
        baseSHA = subprocess.check_output("git rev-parse origin/master", encoding='utf-8', shell=True)

        gitLogCommand = f"git diff --name-only {baseSHA}...{headSHA}"
        result = subprocess.check_output(gitLogCommand, encoding='utf-8', shell=True)
        return FilePathsManager(list(map(lambda path: Path(os.path.join(definitions.ROOT_DIR, path)), result.splitlines())))
