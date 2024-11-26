from .helpers import MODULES_DIR, ROOT_DIR, extract_feature_id, load_json
from .logger import StepLogger
from json import JSONDecodeError
from pathlib import Path
from pydantic import BaseModel, Field, ValidationError
from typing import Literal, Optional


class Updated(BaseModel):
    date: str = Field(pattern=r'^\d{4}/(0[1-9]|1[0-2])/(0[1-9]|[1-2]\d|3[0-1])$')
    minecraft_version: str


class FeatureMeta(BaseModel):
    id: str
    documentation: str = Field(pattern=r'^https://docs\.mcbookshelf\.dev/en/latest/modules/.+$')
    authors: list[str]
    contributors: list[str] = []
    created: Updated
    updated: Updated


class ModuleMeta(BaseModel):
    id: str = Field(pattern=r'^bs\..+$')
    name: str
    description: str
    documentation: str = Field(pattern=r'^https://docs\.mcbookshelf\.dev/en/latest/modules/.+$')
    image: str = None
    kind: Literal['data_pack', 'resource_pack']
    tags: list[str] = []
    authors: list[str] = []
    contributors: list[str] = []
    dependencies: list[str] = []
    weak_dependencies: list[str] = []


def format_validation_errors(e: ValidationError) -> str:
    """
    Formats validation errors for better readability.
    """
    errors = (f"{'.'.join(map(str, error['loc']))}: {error['msg']}" for error in e.errors())
    return "\n    - " + "\n    - ".join(errors)


def get_feature_meta(file_path: Path, logger: StepLogger) -> Optional[FeatureMeta]:
    """
    Retrieve feature metadata from a JSON file.
    """
    relative_path = file_path.relative_to(ROOT_DIR)
    feature_id = extract_feature_id(file_path)
    if not feature_id:
        return None

    try:
        meta = load_json(file_path).get('__bookshelf__', {})
        return FeatureMeta(id=feature_id, **meta)

    except ValidationError as e:
        errors = format_validation_errors(e)
        logger.error(f'Feature "{feature_id}" has errors:{errors}', extra={
            'title': 'Validation Error',
            'file': relative_path,
        })

    except JSONDecodeError as e:
        logger.error(f'File "{relative_path}" has invalid JSON.', extra={
            'title': 'Malformed Json',
            'file': relative_path,
            'line': e.lineno
        })


def get_module_meta(file_path: Path, logger: StepLogger) -> Optional[ModuleMeta]:
    """
    Retrieve module metadata from a JSON file.
    """
    relative_path = file_path.relative_to(ROOT_DIR)
    module_id = file_path.parent.name

    try:
        data = load_json(file_path)
        meta = data.get('meta', {})

        if 'data_pack' in data and 'resource_pack' in data:
            raise ValueError('A module cannot have both "data_pack" and "resource_pack".')
        if 'data_pack' in data:
            meta['kind'] = 'data_pack'
        if 'resource_pack' in data:
            meta['kind'] = 'resource_pack'

        for key in ['image','tags']:
            if key not in meta:
                logger.warning(f'Metadata file for module "{module_id}" is missing optional key "{key}". You should consider adding it.')

        return ModuleMeta(id=module_id, **meta)

    except ValidationError as e:
        errors = format_validation_errors(e)
        logger.error(f'Module "{module_id}" has errors:{errors}', extra={
            'title': 'Validation Error',
            'file': relative_path,
        })

    except JSONDecodeError as e:
        logger.error(f'File "{relative_path}" has invalid JSON.', extra={
            'title': 'Malformed Json',
            'file': relative_path,
            'line': e.lineno
        })


def build_manifest(logger: StepLogger) -> Optional[dict]:
    """
    Build the manifest by gathering metadata for all modules and their features.
    """
    manifest = {'modules':[]}
    for module_dir in MODULES_DIR.iterdir():
        if module_meta := get_module_meta(module_dir / 'module.json', logger):
            module_dict = module_meta.model_dump(
                exclude_defaults=True,
                exclude_none=True,
            )
            module_dict['features'] = []
            for file_path in (module_dir / 'data') .rglob('*.json'):
                if feature_meta := get_feature_meta(file_path, logger):
                    feature_dict = feature_meta.model_dump(
                        exclude_defaults=True,
                        exclude_none=True,
                    )
                    module_dict['features'].append(feature_dict)
            manifest['modules'].append(module_dict)

    return manifest if not logger.errors else None
