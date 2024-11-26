from beet import Context
from scripts.toolkit.helpers import load_json, set_prefix


def get_biomes(ctx: Context, version: str) -> list[dict]:
    cache = ctx.cache.get(f'version/{version}')
    file = cache.download(f'https://raw.githubusercontent.com/misode/mcmeta/{version}-summary/data/worldgen/biome/data.min.json')

    return [{
        'type': set_prefix(biome),
        'temperature': float(data['temperature']),
        'has_precipitation': bool(data['has_precipitation']),
    } for biome, data in load_json(file).items()]
