from beet import Context, LootTable
from mcdata import get_blocks
from scripts.toolkit.helpers import generate_loot_table_tree, is_numeric_sequence


def beet_default(ctx: Context):
    blocks = get_blocks(ctx, ctx.meta.get('minecraft_versions')[-1])

    ctx.data[f'{ctx.data.name}:get/get_block'] = generate_get_block_loot_table(blocks)
    ctx.data[f'{ctx.data.name}:get/get_types'] = generate_get_types_loot_table(blocks)
    for state in {item['id']: item for entry in blocks for item in entry['states']}.values():
        ctx.data[f'{ctx.data.name}:get/{state['id']}'] = \
            generate_numeric_state_loot_table(state) \
            if is_numeric_sequence(state['options']) \
            else generate_simple_state_loot_table(state)

    #ctx.data[f'{ctx.data.name}:has_state'] = generate_has_state_block_tag(blocks)
    #ctx.data[f'{ctx.data.name}:import/types_table'] = generate_types_table_function(blocks)
    #ctx.data[f'{ctx.data.name}:import/items_table'] = generate_items_table_function(blocks)
    #ctx.data[f'{ctx.data.name}:import/groups_table'] = generate_groups_table_function(blocks)


def block_functions(block: dict):
    return [{
        'function': 'set_custom_data',
        'tag': f"{{type:'{block['type']}',item:'{block['item']}',group:{block['group']}}}",
    }] if block['item'] else [{
        'function': 'set_custom_data',
        'tag': f"{{type:'{block['type']}',group:{block['group']}}}",
    }]


def state_functions(name: str, idx: int, option: str) -> list:
    return [{
        'function': 'set_custom_data',
        'tag': f"{{properties:{{{name}:'{option}'}},_:{{{idx}:'{name}={option},'}}}}",
    }]


def block_conditions(blocks: list[dict]) -> list:
    return [{
        'condition': 'minecraft:location_check',
        'predicate': {'block': {'blocks': [block['type'] for block in blocks]}}
    }]


def state_conditions(name: str, option: str) -> list:
    return [{
        'condition': 'location_check',
        'predicate': {'block': {'state': {name: option}}}
    }]


def get_state_range(options: list) -> dict|int:
    optmin, optmax = min(options), max(options)
    return {
        'min': int(optmin),
        'max': int(optmax)
    } if optmin != optmax else int(optmin)


def generate_get_types_loot_table(blocks: list[dict]) -> LootTable:
    return LootTable(
        generate_loot_table_tree(blocks, lambda block: {
            'type': 'item',
            'name': 'egg',
            'functions': block_functions(block),
        }, block_conditions)
    )


def generate_get_block_loot_table(blocks: list[dict]) -> LootTable:
    return LootTable(
        generate_loot_table_tree(blocks, lambda block: {
            'type': 'item',
            'name': 'egg',
            'functions': block_functions(block),
        } if block['group'] == 0 else {
            'type': 'loot_table',
            'value': f'bs.block:get/{block['states'][-1]['id']}',
            'functions': block_functions(block),
        }, block_conditions)
    )


def generate_numeric_state_loot_table(state: dict) -> LootTable:
    return LootTable(
        generate_loot_table_tree(state['options'], lambda option: {
            'type': 'loot_table',
            'value': f'bs.block:get/{state['ref']}',
            'functions': state_functions(state['name'], state['idx'], option),
        } if state["ref"] else {
            'type': 'item',
            'name': 'egg',
            'functions': state_functions(state['name'], state['idx'], option),
        }, lambda options: [{
            'condition': 'minecraft:location_check',
            'predicate': {'block': {'state': {f'{state['name']}': get_state_range(options)}}}
        }])
    )


def generate_simple_state_loot_table(state: dict) -> LootTable:
    return LootTable(
        {'pools': [{'rolls': 1, 'entries': [{'type': 'alternatives','children':[{
            'type': 'loot_table',
            'value': f'bs.block:get/{state['ref']}',
            'functions': state_functions(state['name'], state['idx'], option),
            'conditions': state_conditions(state['name'], option),
        } if state["ref"] else {
            'type': 'item',
            'name': 'egg',
            'functions': state_functions(state['name'], state['idx'], option),
            'conditions': state_conditions(state['name'], option),
        } for option in state['options']]}]}]}
    )
