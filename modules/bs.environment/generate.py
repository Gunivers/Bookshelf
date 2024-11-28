from beet import Context, LootTable, Predicate
from collections import defaultdict
from datetime import datetime
from core.common.helpers import generate_loot_table_tree
from core.common.mcdata import get_biomes
from core.definitions import MINECRAFT_VERSIONS


def beet_default(ctx: Context):
    biomes = get_biomes(ctx, version := MINECRAFT_VERSIONS[-1])

    with ctx.override(generate_namespace=ctx.data.name):
        ctx.generate('get/get_biome', generate_get_biome_loot_table(biomes))
        ctx.generate('can_snow', generate_can_snow_predicate(biomes, version))
        ctx.generate('has_precipitation', generate_has_precipitation_predicate(biomes, version))


def generate_get_biome_loot_table(biomes: list[dict]) -> LootTable:
    return LootTable(
        generate_loot_table_tree(biomes, lambda biome: {
            'type': 'item',
            'name': 'egg',
            'functions': [{'function': 'set_custom_data', 'tag': biome}],
        }, lambda biomes: [{
            'condition': 'minecraft:location_check',
            'predicate': {'biomes': [biome['type'][10:] for biome in biomes]}
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
