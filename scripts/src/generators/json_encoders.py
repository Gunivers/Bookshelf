from dataclasses import asdict, is_dataclass
from json import JSONEncoder
from metadata.build_metadata import DatapackMetadata, ModuleMetadata


class DCJSONEncoder(JSONEncoder):
    def default(self, o):
        if is_dataclass(o):
            return _cleandict(asdict(o))
        if isinstance(o, set):
            return list(o)
        return super().default(o)


class ModuleJSONEncoder(DCJSONEncoder):
    def default(self, o):
        if isinstance(o, ModuleMetadata):
            dic = _cleandict(asdict(o))
            dic["features"] = [f.mc_path for f in o.features]
            return dic
        return super().default(o)


class ManifestJSONEncoder(DCJSONEncoder):
    def default(self, o):
        if isinstance(o, DatapackMetadata):
            return _cleandict(asdict(o), True)
        return super().default(o)


def _cleandict(d, keep_path=False):
    if isinstance(d, dict):
        return {k: _cleandict(v, True) for k, v in d.items() if v is not None and ("path" not in k or (keep_path and k == "module_path"))}
    elif isinstance(d, list):
        return [_cleandict(v, True) for v in d]
    else:
        return d
