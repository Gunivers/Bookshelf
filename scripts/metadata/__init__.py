from ..log import StepContext
from ..utils import MODULES_DIR
from .feature import get_feature_meta
from .module import get_module_meta

__all__ = ['get_feature_meta', 'get_module_meta']


def build_manifest(logger: StepContext) -> dict|None:
    manifest = {'modules':[]}
    for module_dir in MODULES_DIR.iterdir():
        if module_meta := get_module_meta(module_dir / 'module.json', logger):
            module_dict = module_meta.model_dump(exclude_defaults=True, exclude_none=True)
            module_dict['features'] = []
            for file_path in (module_dir / 'data') .rglob('*.json'):
                if feature_meta := get_feature_meta(file_path, logger):
                    feature_dict = feature_meta.model_dump(exclude_defaults=True, exclude_none=True)
                    module_dict['features'].append(feature_dict)
            manifest['modules'].append(module_dict)

    return manifest if not logger.errors else None
