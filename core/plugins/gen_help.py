from beet import Context, Function, FunctionTag


def beet_default(ctx: Context):
    with ctx.override(generate_namespace=ctx.data.name):
        function = ctx.generate('__help__',
            render=Function(source_path='core/help.jinja'),
            documentation=ctx.meta.get('documentation'),
            module=ctx.meta.get('name'),
        )
        ctx.generate('help', FunctionTag({'values':[function]}))
