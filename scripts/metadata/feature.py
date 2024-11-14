from ..log import StepContext
from ..utils import ROOT_DIR, format_validation_errors, load_json
from json import JSONDecodeError
from pathlib import Path
from pydantic import BaseModel, Field, ValidationError


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


def get_feature_meta(file_path: Path, logger: StepContext) -> FeatureMeta|None:
    relative_path = file_path.relative_to(ROOT_DIR)
    if len(relative_path.parts) < 5:
        return None

    module_id = relative_path.parts[1]
    feature_start_index = 6 if relative_path.parts[4] == 'tags' else 5
    feature_id = Path(*relative_path.parts[feature_start_index:]).with_suffix('').as_posix()

    try:
        meta = load_json(file_path).get('__bookshelf__', {})
        return FeatureMeta(id=feature_id, **meta) if 'feature' in meta and meta['feature'] else None

    except ValidationError as e:
        logger.error(f'Feature "{feature_id}" in module "{module_id}" has errors:{format_validation_errors(e)}', extra={
            'title': 'Validation Error',
            'file': relative_path,
        })

    except JSONDecodeError as e:
        logger.error(f'File "{relative_path}" has invalid JSON.', extra={
            'title': 'Malformed Json',
            'file': relative_path,
            'line': e.lineno
        })
