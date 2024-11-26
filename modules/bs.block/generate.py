from beet import Context, Function, BlockTag, LootTable
from mcdata import get_blocks
from scripts.toolkit.helpers import generate_loot_table_tree


def beet_default(ctx: Context):
    blocks = get_blocks(ctx, ctx.meta.get('minecraft_versions')[-1])

    with ctx.override(generate_namespace=ctx.data.name):
        ctx.generate('import/types_table', render=Function(source_path='types_table.jinja'))
        ctx.generate('import/items_table', render=Function(source_path='items_table.jinja'))
        ctx.generate('import/groups_table', render=Function(source_path='groups_table.jinja'))

        ctx.generate('get/get_block', generate_get_block_loot_table(blocks))
        ctx.generate('get/get_types', generate_get_types_loot_table(blocks))
        for state in {s['id']: s for b in blocks for s in b['states']}.values():
            ctx.generate(f'get/{state['id']}', generate_get_state_loot_table(state))

    #ctx.data[f'{ctx.data.name}:has_state'] = generate_has_state_block_tag(blocks)


def format_block_entry(entry: dict, block: dict) -> dict:
    return {**entry, 'functions': [{
        'function': 'set_custom_data',
        'tag': f"{{type:'{block['type']}',item:'{block['item']}',group:{block['group']}}}"
            if block['item'] else f"{{type:'{block['type']}',group:{block['group']}}}",
    }]}


def format_state_entry(entry: dict, name: str, idx: int, option: str) -> dict:
    return {**entry, 'functions': [{
        'function': 'set_custom_data',
        'tag': f"{{properties:{{{name}:'{option}'}},_:{{{idx}:'{name}={option},'}}}}",
    }], 'conditions': [{
        'condition': 'location_check',
        'predicate': {'block': {'state': {name: option}}}
    }]}


def generate_get_types_loot_table(blocks: list[dict]) -> LootTable:
    return LootTable(
        generate_loot_table_tree(blocks, lambda block: format_block_entry({
            'type': 'item',
            'name': 'egg',
        }, block), lambda blocks: [{
            'condition': 'location_check',
            'predicate': {'block': {'blocks': [block['type'] for block in blocks]}}
        }])
    )


def generate_get_block_loot_table(blocks: list[dict]) -> LootTable:
    return LootTable(
        generate_loot_table_tree(blocks, lambda block: format_block_entry({
            'type': 'item',
            'name': 'egg',
        } if block['group'] == 0 else {
            'type': 'loot_table',
            'value': f'bs.block:get/{block['states'][-1]['id']}',
        }, block), lambda blocks: [{
            'condition': 'location_check',
            'predicate': {'block': {'blocks': [block['type'] for block in blocks]}}
        }])
    )


def generate_get_state_loot_table(state: dict) -> LootTable:
    return LootTable(
        {'pools': [{'rolls': 1, 'entries': [{'type': 'alternatives','children':[
            format_state_entry({
                'type': 'loot_table',
                'value': f'bs.block:get/{state['ref']}',
            } if state["ref"] else {
                'type': 'item',
                'name': 'egg',
            }, state['name'], state['idx'], option)
            for option in state['options']
        ]}]}]}
    )
