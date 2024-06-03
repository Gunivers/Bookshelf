from dataclasses import asdict, is_dataclass
import json
from metadata.build_metadata import DatapackMetadata, build
import definitions

def generate():
    metadata: list[DatapackMetadata] = build()

    path = definitions.GENERATED_PATH / "manifest.json"
    with open(path, 'w') as file:
        json.dump(metadata, file, indent=4, cls=DCJSONEncoder)


class DCJSONEncoder(json.JSONEncoder):
    def default(self, o):
        if is_dataclass(o):
            return cleandict(asdict(o))
        if type(o) is set:
            return list(o)
        return super().default(o)

def cleandict(d):
    if isinstance(d, dict):
        return {k: cleandict(v) for k, v in d.items() if v is not None}
    elif isinstance(d, list):
        return [cleandict(v) for v in d]
    else:
        return d
