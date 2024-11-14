from beet import Context, Function

def beet_default(ctx: Context):
    ctx.generate(
        f'{ctx.data.name}:__help__',
        render=Function(source_path='resources/help.jinja'),
        documentation=ctx.meta.get('documentation'),
        version=ctx.meta.get('version'),
        module=ctx.directory.name[3:],
    )
