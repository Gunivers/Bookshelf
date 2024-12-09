import json
from beet import Context
from core.definitions import MINECRAFT_VERSIONS


def beet_default(ctx: Context):
    yield
    formats = get_supported_formats(ctx, MINECRAFT_VERSIONS)

    ctx.assets.pack_format = formats['assets']['max_inclusive']
    ctx.assets.supported_formats = formats['assets']
    ctx.assets.mcmeta.data = dict(sorted(ctx.assets.mcmeta.data.items()))

    ctx.data.pack_format = formats['data']['max_inclusive']
    ctx.data.supported_formats = formats['data']
    ctx.data.mcmeta.data['id'] = ctx.directory.name
    ctx.data.mcmeta.data = dict(sorted(ctx.data.mcmeta.data.items()))


def get_supported_formats(ctx: Context, versions: list) -> dict:
    cache = ctx.cache.get(f'version/{versions[0]}')
    file = cache.download(f'https://raw.githubusercontent.com/misode/mcmeta/refs/tags/{versions[0]}-summary/version.json')
    min_version = json.loads(file.read_text('utf-8'))

    cache = ctx.cache.get(f'version/{versions[-1]}')
    file = cache.download(f'https://raw.githubusercontent.com/misode/mcmeta/refs/tags/{versions[-1]}-summary/version.json')
    max_version = json.loads(file.read_text('utf-8'))

    return {
        'data': {
            'min_inclusive': min_version['data_pack_version'],
            'max_inclusive': max_version['data_pack_version'],
        },
        'assets': {
            'min_inclusive': min_version['resource_pack_version'],
            'max_inclusive': max_version['resource_pack_version'],
        }
    }
