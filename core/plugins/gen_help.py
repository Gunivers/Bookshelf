from beet import Context, Function, FunctionTag


def beet_default(ctx: Context) -> None:
    """Generate a help function for the current module."""
    with ctx.override(generate_namespace=ctx.data.name):
        function = ctx.generate("__help__",
            documentation=ctx.meta.get("documentation"),
            module=ctx.meta.get("name"),
            render=Function(source_path="core/help.jinja"),
        )
        ctx.generate("help", FunctionTag({"values":[function]}))
