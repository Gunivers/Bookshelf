from beet import Context
from datetime import datetime
from core.common.helpers import generate_loot_table_tree
from core.common.mcdata import get_shapes
from core.definitions import MINECRAFT_VERSIONS


def beet_default(ctx: Context):
    shapes = get_shapes(ctx, version := MINECRAFT_VERSIONS[-1])

    with ctx.override(generate_namespace=ctx.data.name):
        ctx.generate('get/get_block', generate_get_block_loot_table(shapes))
        ctx.generate('has_offset', generate_has_offset_block_tag(shapes, version))
        ctx.generate('is_composite', generate_is_composite_block_tag(shapes, version))
        for group in [g for g in shapes if g["group"] > 0]:
            ctx.generate(f'get/{group['group']}', generate_get_block_group_loot_table(group['shapes']))
