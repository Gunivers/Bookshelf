from beet import Context, LootTable, Predicate
from collections import defaultdict
from mcdata import get_biomes
from datetime import datetime
from scripts.toolkit.helpers import generate_loot_table_tree


def beet_default(ctx: Context):
    biomes = get_biomes(ctx, version := ctx.meta.get('minecraft_versions')[-1])

    ctx.data[f'{ctx.data.name}:get/get_biome'] = generate_get_biome_loot_table(biomes)
    ctx.data[f'{ctx.data.name}:can_snow'] = generate_can_snow_predicate(biomes, version)
    ctx.data[f'{ctx.data.name}:has_precipitation'] = generate_has_precipitation_predicate(biomes, version)


def generate_get_biome_loot_table(biomes: list[dict]) -> LootTable:
    return LootTable(
        generate_loot_table_tree(biomes, lambda item: {
            'type': 'item',
            'name': 'egg',
            'functions': [{'function': 'set_custom_data', 'tag': item}],
        }, lambda items: [{
            'condition': 'minecraft:location_check',
            'predicate': {'biomes': [item['type'] for item in items]}
        }])
    )


def generate_can_snow_predicate(biomes: list[dict], version: str) -> Predicate:
    groups = defaultdict(list)
    for biome in [biome for biome in biomes if biome["temperature"] < 0.4 and biome['has_precipitation']]:
        y = int((biome["temperature"] - 0.15) / 0.00125 + 80)
        groups[y if y > 0 else -2147483648].append(biome['type'])

    return Predicate({
        '__bookshelf__': {
            'feature': True,
            'documentation': 'https://docs.mcbookshelf.dev/en/latest/modules/environment.html#can-it-snow',
            'authors': ['Aksiome'],
            'created': {'date': '2024/04/22', 'minecraft_version': '1.20.5'},
            'updated': {'date': datetime.now().strftime("%Y/%m/%d"), 'minecraft_version': version}
        },
        "condition":"minecraft:any_of",
        "terms": [{
            "condition": "minecraft:location_check",
            "predicate": {
                "position": { "y": { "min": y } },
                "biomes": biomes
            }
        } for y, biomes in dict(sorted(groups.items())).items()]
    })


def generate_has_precipitation_predicate(biomes: list[dict], version: str) -> Predicate:
    return Predicate({
        '__bookshelf__': {
            'feature': True,
            'documentation': 'https://docs.mcbookshelf.dev/en/latest/modules/environment.html#can-it-rain-or-snow',
            'authors': ['Aksiome'],
            'created': {'date': '2024/04/22', 'minecraft_version': '1.20.5'},
            'updated': {'date': datetime.now().strftime("%Y/%m/%d"), 'minecraft_version': version}
        },
        'condition': 'minecraft:location_check',
        'predicate': {'biomes': [biome['type'] for biome in biomes if biome['has_precipitation']]}
    })
