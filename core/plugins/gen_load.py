from beet import Context, Function, FunctionTag
from core.definitions import MODULES, VERSION


def beet_default(ctx: Context):
    ctx.require("beet.contrib.lantern_load.base_data_pack")
    ctx.data['load:load'] = FunctionTag({'values': ['#bs.load:load']})

    major, minor, patch = map(int, VERSION.split('.'))

    ctx.generate(f'bs.load:cleanup', render=Function(source_path='core/load/cleanup.jinja'))
    ctx.generate(f'bs.load:exclusive', render=Function(source_path='core/load/exclusive.jinja'))

    ctx.generate(f'bs.load:v{VERSION}/enumerate', render=Function(
        source_path='core/load/enumerate.jinja'
    ), major=major, minor=minor, patch=patch)

    ctx.generate(f'bs.load:validate', render=Function(
        source_path='core/load/validate.jinja'
    ), major=major, minor=minor, patch=patch)

    ctx.data['bs.load:load'] = FunctionTag({
        'values': ['bs.load:cleanup','#bs.load:enumerate','bs.load:validate'] + [{
            'id': f'#bs.load:module/{mod[3:]}',
            'required': False
        } for mod in MODULES]
    })

    ctx.data['bs.load:unload'] = FunctionTag({
        'values': [{'id': f'{mod}:__unload__', 'required': False} for mod in MODULES]
    })

    ctx.data[f'bs.load:module/{ctx.directory.name[3:]}'] = FunctionTag({
        'values': get_load_tag_values(
            ctx.directory.name,
            ctx.meta.get('dependencies', []) or [],
            ctx.meta.get('weak_dependencies', []) or [],
        )
    })


def get_load_tag_values(
    mod: str,
    deps: list[str],
    weak_deps: list[str],
) -> list[str]:
    return [f'{mod}:__load__'] \
        + [f'{dep}:__load__' for dep in deps] \
        + [{'id': f'{dep}:__load__', 'required': False} for dep in weak_deps]
