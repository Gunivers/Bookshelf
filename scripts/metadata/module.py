from ..log import StepContext
from ..utils import ROOT_DIR, format_validation_errors, load_json
from json import JSONDecodeError
from pathlib import Path
from pydantic import BaseModel, Field, ValidationError
from typing import Literal


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


def get_module_meta(file_path: Path, logger: StepContext) -> ModuleMeta|None:
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
        logger.error(f'Module "{module_id}" has errors:{format_validation_errors(e)}', extra={
            'title': 'Validation Error',
            'file': relative_path,
        })

    except JSONDecodeError as e:
        logger.error(f'File "{relative_path}" has invalid JSON.', extra={
            'title': 'Malformed Json',
            'file': relative_path,
            'line': e.lineno
        })
