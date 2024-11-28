from beet import Context, Function, BlockTag, LootTable
from datetime import datetime
from core.common.helpers import generate_loot_table_tree, render_snbt
from core.common.mcdata import get_blocks
from core.definitions import MINECRAFT_VERSIONS


def beet_default(ctx: Context):
    ctx.template.add_package(__name__)
    blocks = get_blocks(ctx, version := MINECRAFT_VERSIONS[-1])

    with ctx.override(generate_namespace=ctx.data.name):
        ctx.generate('has_state', generate_has_state_block_tag(blocks, version))
        ctx.generate('get/get_block', generate_get_block_loot_table(blocks, ctx.data.name))
        ctx.generate('get/get_type', generate_get_type_loot_table(blocks))
        for state in {s['id']: s for b in blocks for s in b['states']}.values():
            ctx.generate(f'get/{state['id']}', generate_get_state_loot_table(state, ctx.data.name))

        ctx.generate('import/groups_table',
            render=Function(source_path='groups_table.jinja'),
            groups=render_snbt(format_groups_table(blocks)),
        )
        ctx.generate('import/items_table',
            render=Function(source_path='items_table.jinja'),
            items=render_snbt({
                block['item']: {k: v for k, v in block.items() if k != "states"}
                for block in reversed(blocks)
            }),
        )
        ctx.generate('import/types_table',
            render=Function(source_path='types_table.jinja'),
            types=render_snbt({
                block['type']: {k: v for k, v in block.items() if k != "states"}
                for block in blocks
            }),
        )


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


def format_groups_table(blocks: list[dict]) -> dict:
    return {
        block["group"]: [{
            "i": state["idx"],
            "n": state["name"],
            "o": [{
                "i": idx,
                "v": value,
                "p": {state["name"]: value},
                "s":  {state["idx"]: f"{state["name"]}={value},"},
            } for idx, value in enumerate(state["options"])]
        } for state in block["states"]]
        for block in blocks
    }


def generate_get_type_loot_table(blocks: list[dict]) -> LootTable:
    return LootTable(
        generate_loot_table_tree(blocks, lambda block: format_block_entry({
            'type': 'item',
            'name': 'egg',
        }, block), lambda blocks: [{
            'condition': 'location_check',
            'predicate': {'block': {'blocks': [block['type'][10:] for block in blocks]}}
        }])
    )


def generate_get_block_loot_table(blocks: list[dict], namespace: str) -> LootTable:
    return LootTable(
        generate_loot_table_tree(blocks, lambda block: format_block_entry({
            'type': 'item',
            'name': 'egg',
        } if block['group'] == 0 else {
            'type': 'loot_table',
            'value': f'{namespace}:get/{block['states'][-1]['id']}',
        }, block), lambda blocks: [{
            'condition': 'location_check',
            'predicate': {'block': {'blocks': [block['type'][10:] for block in blocks]}}
        }])
    )


def generate_get_state_loot_table(state: dict, namespace: str) -> LootTable:
    return LootTable(
        {'pools': [{'rolls': 1, 'entries': [{'type': 'alternatives','children':[
            format_state_entry({
                'type': 'loot_table',
                'value': f'{namespace}:get/{state['ref']}',
            } if state["ref"] else {
                'type': 'item',
                'name': 'egg',
            }, state['name'], state['idx'], option)
            for option in state['options']
        ]}]}]}
    )


def generate_has_state_block_tag(blocks: list[dict], version: str) -> dict:
    return BlockTag({
        '__bookshelf__': {
            'feature': True,
            'documentation': 'https://docs.mcbookshelf.dev/en/latest/modules/block.html#has-state',
            'authors': ['Aksiome'],
            'created': {'date': '2024/01/15', 'minecraft_version': '1.20.5'},
            'updated': {'date': datetime.now().strftime("%Y/%m/%d"), 'minecraft_version': version}
        },
        'values': [b['type'] for b in blocks if b['group'] > 0],
    })
