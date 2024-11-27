from beet import Context


def beet_default(ctx: Context):
    yield
    if imports := ctx.data.functions.match(f'{ctx.data.name}:import/*'):
        load = ctx.data.functions.get(f'{ctx.data.name}:__load__')
        load.append('')
        load.append(f'function {name}' for name in imports)
