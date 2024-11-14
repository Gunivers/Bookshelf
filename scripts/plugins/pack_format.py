import json
from beet import Context

def beet_default(ctx: Context):
    formats = get_supported_formats(ctx)

    ctx.assets.pack_format = formats['assets']['max_inclusive']
    ctx.assets.supported_formats = formats['assets']
    ctx.assets.mcmeta.data = dict(sorted(ctx.assets.mcmeta.data.items()))

    ctx.data.mcmeta.data['id'] = ctx.directory.name
    ctx.data.pack_format = formats['data']['max_inclusive']
    ctx.data.supported_formats = formats['data']
    ctx.data.mcmeta.data = dict(sorted(ctx.data.mcmeta.data.items()))


def get_supported_formats(ctx: Context) -> dict:
    versions = ctx.meta.get('minecraft_versions')

    cache = ctx.cache.get(f'version/{versions[0]}')
    file = cache.download(f'https://raw.githubusercontent.com/misode/mcmeta/refs/tags/{versions[0]}-summary/version.json')
    with file.open('r') as fp:
        min_ver = json.load(fp)

    cache = ctx.cache.get(f'version/{versions[-1]}')
    file = cache.download(f'https://raw.githubusercontent.com/misode/mcmeta/refs/tags/{versions[-1]}-summary/version.json')
    with file.open('r') as fp:
        max_ver = json.load(fp)

    return {
        'data': {
            'min_inclusive': min_ver['data_pack_version'],
            'max_inclusive': max_ver['data_pack_version'],
        },
        'assets': {
            'min_inclusive': min_ver['resource_pack_version'],
            'max_inclusive': max_ver['resource_pack_version'],
        }
    }
