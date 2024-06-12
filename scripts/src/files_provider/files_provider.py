from dataclasses import dataclass
import os
from pathlib import Path
import subprocess
from typing import Callable
import definitions
import glob
from typing import cast
from files_provider._types import *
from files_provider.utils import get_module_path



class Manager[T]:

    _content: list[T]

    def map[U](self, function: Callable[[T], U]):
        self._content = list(map(function, self._content))

    def filter(self, function: Callable[[T], bool]):
        self._content = list(filter(function, self._content))

    def get(self) -> list[T]:
        return self._content


@dataclass
class DatapackManager(Manager[Datapack]):

    def __init__(self, datapacks: list[Datapack]):
        self._content = datapacks

    def get_modules(self) -> 'ModuleManager':
        modules: list[Module] = list()
        for datapack in self._content:
            modules.extend([ Module(module.name, Path(module.path)) for module in os.scandir(datapack.path / 'data') if module.is_dir() and module.name != 'minecraft'])
        return ModuleManager(modules)

    def get_separated_modules(self) -> list['ModuleManager']:
        modules = self.get_modules().get()
        result: list[ModuleManager] = []
        for module in modules:
            result.append(ModuleManager([module]))
        return result


@dataclass
class ModuleManager(Manager[Module]):

    def __init__(self, modules: list[Module]):
        self._content = modules

    def get_all_features(self) -> list[Feature]:
        features: list[Feature] = []
        for module in self._content:
            for file in glob.glob(pathname="tags/function/**/*.json", root_dir=module.path, recursive=True):
                artifact = build_artifact(Path(os.path.join(module.path, file)))
                artifact.get_content()
                bookshelf_tag = cast(Tag, artifact)._content.get(definitions.FEATURE_TAG_NAMESPACE, None)
                if isinstance(artifact, Tag) and bookshelf_tag != None and bookshelf_tag.get('feature', False):
                    features.append(Feature(artifact.real_path, artifact.mc_path, artifact._content))
        return features


class ArtifactManager(Manager[Artifact]):

    def __init__(self, artifacts: list[Artifact]):
        self._content = artifacts

    def get_modules(self) -> ModuleManager:
        modules: set[Module] = set()
        for artifact in self._content:
            modules.add(Module(artifact.namespace, get_module_path(artifact.namespace, artifact.real_path)))
        return ModuleManager(modules)

    def get_features(self) -> list[Feature]:
        features: list[Feature] = []
        for artifact in self._content:
            if isinstance(artifact, Tag) and cast(Tag, artifact).get_content().get('values', False):
                features.append(artifact)
        return features

    def get_functions(self) -> list[Artifact]:
        return list(filter(lambda artifact: isinstance(artifact, Function), self._content))

    def remove_minecraft_namespaces(self) -> 'ArtifactManager':
        self.filter(lambda artifact: artifact.namespace != 'minecraft')
        return self


class FilePathsManager(Manager[Path]):

    def __init__(self, files: list[Path]):
        self._content = files

    def only_dp_artifacts(self) -> ArtifactManager:
        possible_extensions = [cat.value.extension for cat in DataCategory]
        file_paths: list[Path] = list(filter(lambda file_path: file_path.relative_to(definitions.ROOT_DIR).parts[0] == 'datapacks' and file_path.suffix in possible_extensions, self._content))
        result: list[Artifact] = []
        for file_path in file_paths:
            artifact = build_artifact(file_path)
            if artifact:
                result.append(artifact)
        return ArtifactManager(result)


ignore_datapacks = ["Bookshelf Examples", "Bookshelf World"]

class FilesProvider:

    def get_all_files_not_upstreamed(self) -> FilePathsManager:
        headSHA = subprocess.check_output("git rev-parse HEAD", encoding='utf-8', shell=True)
        baseSHA = subprocess.check_output("git rev-parse origin/master", encoding='utf-8', shell=True)

        gitLogCommand = f"git diff --name-only --diff-filter=d {baseSHA}...{headSHA}"
        result = subprocess.check_output(gitLogCommand, encoding='utf-8', shell=True)
        return FilePathsManager(list(map(lambda path: Path(os.path.join(definitions.ROOT_DIR, path)), result.splitlines())))

    def datapacks(self) -> DatapackManager:
        return DatapackManager([ Datapack(datapack.name, Path(datapack.path)) for datapack in os.scandir(definitions.DATAPACKS_PATH) if datapack.is_dir() and datapack.name not in ignore_datapacks])

    def separated_datapacks(self) -> list[DatapackManager]:
        datapacks = self.datapacks().get()
        result: list[DatapackManager] = []
        for datapack in datapacks:
            result.append(DatapackManager([datapack]))
        return result
