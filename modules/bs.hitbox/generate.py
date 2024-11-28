from beet import Context, BlockTag, LootTable
from datetime import datetime
from collections import defaultdict
from core.common.helpers import generate_loot_table_tree, render_snbt
from core.common.mcdata import get_shapes
from core.definitions import MINECRAFT_VERSIONS


def beet_default(ctx: Context):
    shapes = get_shapes(ctx, version := MINECRAFT_VERSIONS[-1])

    with ctx.override(generate_namespace=ctx.data.name):
        ctx.generate('has_offset', generate_has_offset_block_tag(shapes, version))
        ctx.generate('is_composite', generate_is_composite_block_tag(shapes, version))
        ctx.generate('get/get_block', generate_get_block_loot_table(shapes, ctx.data.name))
        for group in [g for g in shapes if g["group"] > 0]:
            ctx.generate(f'get/{group['group']}', generate_get_block_group_loot_table(group['shapes']))


def generate_has_offset_block_tag(shapes: list[dict], version: str) -> dict:
    return BlockTag({
        '__bookshelf__': {
            'feature': True,
            'documentation': 'https://docs.mcbookshelf.dev/en/latest/modules/hitbox.html#has-offset',
            'authors': ['Aksiome'],
            'created': {'date': '2024/09/28', 'minecraft_version': '1.21'},
            'updated': {'date': datetime.now().strftime("%Y/%m/%d"), 'minecraft_version': version}
        },
        'values': list(sorted([
            block for shape in shapes for block in shape["blocks"]
            if all(entry["has_offset"] for entry in shape["shapes"])
        ])),
    })


def generate_is_composite_block_tag(shapes: list[dict], version: str) -> dict:
    return BlockTag({
        '__bookshelf__': {
            'feature': True,
            'documentation': 'https://docs.mcbookshelf.dev/en/latest/modules/hitbox.html#is-composite',
            'authors': ['Aksiome'],
            'created': {'date': '2024/09/28', 'minecraft_version': '1.21'},
            'updated': {'date': datetime.now().strftime("%Y/%m/%d"), 'minecraft_version': version}
        },
        'values': list(sorted([block for shape in shapes for block in shape["blocks"]])),
    })


def generate_get_block_loot_table(groups: list[dict], namespace: str) -> LootTable:
    return LootTable(
        generate_loot_table_tree(groups, lambda entry: {
            'type': 'item',
            'name': 'egg',
            'functions': [{
                'function': 'set_custom_data',
                'tag': f'{{shape:{render_snbt(entry['shapes'][0]['shape'])}}}',
            }],
        } if entry['group'] == 0 else {
            'type': 'loot_table',
            'value': f'{namespace}:get/{entry['group']}',
        }, lambda groups: [{
            'condition': 'location_check',
            'predicate': {'block': {'blocks': [block[10:] for entry in groups for block in entry['blocks']]}}
        }])
    )


def generate_get_block_group_loot_table(group: list[dict]) -> LootTable:
    def create_tree(data: list[dict], properties: list[str]):
        prop = properties[0]
        values = defaultdict(list)

        for item in data:
            values[item["properties"].get(prop)].append(item)

        entries = []
        for value, entry in values.items():
            node = {
                "type": "alternatives",
                "children": create_tree(entry, properties[1:])
            } if len(properties) > 1 else {
                "type": "item",
                "name": "egg",
                "functions": [{"function":"set_custom_data","tag":f"{{shape:{render_snbt(entry[0]["shape"])}}}"}],
            }
            node["conditions"] = [{"condition":"location_check","predicate":{"block":{"state":{prop:value}}}}]
            entries.append(node)

        entries[-1].pop("conditions")
        return entries

    props = {name: set(entry["properties"][name] for entry in group) for name in group[0]["properties"]}
    props = [name for name, _ in sorted(props.items(), key=lambda item: len(item[1]))]

    return LootTable({"pools":[{"rolls":1,"entries":[{"type":"alternatives","children":create_tree(group, props)}]}]})
