from beet import Context, subproject

def beet_default(ctx: Context):
    for dep in ctx.meta.get('dependencies', []) or []:
        ctx.require(subproject({
            'directory': f'../{dep}',
            'extend': 'module.json',
        }))
