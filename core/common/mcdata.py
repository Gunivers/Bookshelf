import json
from beet import Context
from bisect import insort
from collections import Counter, defaultdict
from itertools import permutations
from core.common.helpers import prefix


SPECIAL_ITEMS = {
  'minecraft:acacia_wall_hanging_sign': 'minecraft:acacia_hanging_sign',
  'minecraft:acacia_wall_sign': 'minecraft:acacia_sign',
  'minecraft:attached_melon_stem': 'minecraft:melon_seeds',
  'minecraft:attached_pumpkin_stem': 'minecraft:melon_seeds',
  'minecraft:bamboo_wall_hanging_sign': 'minecraft:bamboo_hanging_sign',
  'minecraft:bamboo_wall_sign': 'minecraft:bamboo_sign',
  'minecraft:beetroots': 'minecraft:beetroot_seeds',
  'minecraft:big_dripleaf_stem': 'minecraft:big_dripleaf',
  'minecraft:birch_wall_hanging_sign': 'minecraft:birch_hanging_sign',
  'minecraft:birch_wall_sign': 'minecraft:birch_sign',
  'minecraft:black_wall_banner': 'minecraft:black_banner',
  'minecraft:blue_wall_banner': 'minecraft:blue_banner',
  'minecraft:brain_coral_wall_fan': 'minecraft:brain_coral_fan',
  'minecraft:brown_wall_banner': 'minecraft:brown_banner',
  'minecraft:bubble_coral_wall_fan': 'minecraft:bubble_coral_fan',
  'minecraft:carrots': 'minecraft:carrot',
  'minecraft:cave_vines_plant': 'minecraft:glow_berries',
  'minecraft:cave_vines': 'minecraft:glow_berries',
  'minecraft:cherry_wall_hanging_sign': 'minecraft:cherry_hanging_sign',
  'minecraft:cherry_wall_sign': 'minecraft:cherry_sign',
  'minecraft:cocoa': 'minecraft:cocoa_beans',
  'minecraft:creeper_wall_head': 'minecraft:creeper_head',
  'minecraft:crimson_wall_hanging_sign': 'minecraft:crimson_hanging_sign',
  'minecraft:crimson_wall_sign': 'minecraft:crimson_sign',
  'minecraft:cyan_wall_banner': 'minecraft:cyan_banner',
  'minecraft:dark_oak_wall_hanging_sign': 'minecraft:dark_oak_hanging_sign',
  'minecraft:dark_oak_wall_sign': 'minecraft:dark_oak_sign',
  'minecraft:dead_brain_coral_wall_fan': 'minecraft:dead_brain_coral_fan',
  'minecraft:dead_bubble_coral_wall_fan': 'minecraft:dead_bubble_coral_fan',
  'minecraft:dead_fire_coral_wall_fan': 'minecraft:dead_fire_coral_fan',
  'minecraft:dead_horn_coral_wall_fan': 'minecraft:dead_horn_coral_fan',
  'minecraft:dead_tube_coral_wall_fan': 'minecraft:dead_tube_coral_fan',
  'minecraft:dragon_wall_head': 'minecraft:dragon_head',
  'minecraft:fire_coral_wall_fan': 'minecraft:fire_coral_fan',
  'minecraft:gray_wall_banner': 'minecraft:gray_banner',
  'minecraft:green_wall_banner': 'minecraft:green_banner',
  'minecraft:horn_coral_wall_fan': 'minecraft:horn_coral_fan',
  'minecraft:jungle_wall_hanging_sign': 'minecraft:jungle_hanging_sign',
  'minecraft:jungle_wall_sign': 'minecraft:jungle_sign',
  'minecraft:lava_cauldron': 'minecraft:cauldron',
  'minecraft:lava': 'minecraft:lava_bucket',
  'minecraft:light_blue_wall_banner': 'minecraft:light_blue_banner',
  'minecraft:light_gray_wall_banner': 'minecraft:light_gray_banner',
  'minecraft:lime_wall_banner': 'minecraft:lime_banner',
  'minecraft:magenta_wall_banner': 'minecraft:magenta_banner',
  'minecraft:mangrove_wall_hanging_sign': 'minecraft:mangrove_hanging_sign',
  'minecraft:mangrove_wall_sign': 'minecraft:mangrove_sign',
  'minecraft:melon_stem': 'minecraft:pumpkin_seeds',
  'minecraft:oak_wall_hanging_sign': 'minecraft:oak_hanging_sign',
  'minecraft:oak_wall_sign': 'minecraft:oak_sign',
  'minecraft:orange_wall_banner': 'minecraft:orange_banner',
  'minecraft:piglin_wall_head': 'minecraft:piglin_head',
  'minecraft:pink_wall_banner': 'minecraft:pink_banner',
  'minecraft:pitcher_crop': 'minecraft:pitcher_pod',
  'minecraft:player_wall_head': 'minecraft:player_head',
  'minecraft:potatoes': 'minecraft:potato',
  'minecraft:powder_snow_cauldron': 'minecraft:cauldron',
  'minecraft:powder_snow': 'minecraft:powder_snow_bucket',
  'minecraft:pumpkin_stem': 'minecraft:pumpkin_seeds',
  'minecraft:purple_wall_banner': 'minecraft:purple_banner',
  'minecraft:red_wall_banner': 'minecraft:red_banner',
  'minecraft:redstone_wall_torch': 'minecraft:redstone_torch',
  'minecraft:redstone_wire': 'minecraft:redstone',
  'minecraft:skeleton_wall_skull': 'minecraft:skeleton_skull',
  'minecraft:soul_wall_torch': 'minecraft:soul_torch',
  'minecraft:spruce_wall_hanging_sign': 'minecraft:spruce_hanging_sign',
  'minecraft:spruce_wall_sign': 'minecraft:spruce_sign',
  'minecraft:sweet_berry_bush': 'minecraft:sweet_berries',
  'minecraft:torchflower_crop': 'minecraft:torchflower_seeds',
  'minecraft:tripwire': 'minecraft:string',
  'minecraft:tube_coral_wall_fan': 'minecraft:tube_coral_fan',
  'minecraft:wall_torch': 'minecraft:torch',
  'minecraft:warped_wall_hanging_sign': 'minecraft:warped_hanging_sign',
  'minecraft:warped_wall_sign': 'minecraft:warped_sign',
  'minecraft:water_cauldron': 'minecraft:cauldron',
  'minecraft:water': 'minecraft:water_bucket',
  'minecraft:wheat': 'minecraft:wheat_seeds',
  'minecraft:white_wall_banner': 'minecraft:white_banner',
  'minecraft:wither_skeleton_wall_skull': 'minecraft:wither_skeleton_skull',
  'minecraft:yellow_wall_banner': 'minecraft:yellow_banner',
  'minecraft:zombie_wall_head': 'minecraft:zombie_head'
}


def get_biomes(ctx: Context, version: str) -> list[dict]:
    cache = ctx.cache.get(f'version/{version}')
    file = cache.download(f'https://raw.githubusercontent.com/misode/mcmeta/{version}-summary/data/worldgen/biome/data.min.json')
    biomes = json.loads(file.read_text('utf-8'))

    return [{
        'type': prefix(biome),
        'temperature': float(data['temperature']),
        'has_precipitation': bool(data['has_precipitation']),
    } for biome, data in biomes.items()]


def get_blocks(ctx: Context, version: str) -> list[dict]:
    cache = ctx.cache.get(f'version/{version}')
    path = cache.get_path('blocks.json')

    if not path.is_file():
        file = cache.download(f'https://raw.githubusercontent.com/misode/mcmeta/{version}-summary/blocks/data.min.json')
        blocks = json.loads(file.read_text('utf-8'))
        file = cache.download(f'https://raw.githubusercontent.com/misode/mcmeta/{version}-registries/item/data.min.json')
        items = {prefix(item): prefix(item) for item in json.loads(file.read_text('utf-8'))} | SPECIAL_ITEMS
        with open(path, 'w') as file:
            json.dump(format_blocks(blocks, items), file, indent=2)

    return json.loads(path.read_text('utf-8'))


def get_shapes(ctx: Context, version: str) -> list[dict]:
    cache = ctx.cache.get(f'version/{version}')
    file = cache.download(f'https://raw.githubusercontent.com/mcbookshelf/Bookshelf-McData/refs/tags/{version}/blocks/shapes.min.json')
    shapes = json.loads(file.read_text('utf-8'))

    group = defaultdict(list)
    for block, entries in shapes.items():
        if all(item['shape'] in ([[0.0,0.0,0.0,1.0,1.0,1.0]], []) for item in entries):
            continue

        for prop in list(entries[0]['properties'].keys()):
            values = {entry['properties'][prop] for entry in entries}
            shapes = {value: [entry['shape'] for entry in entries if entry['properties'][prop] == value] for value in values}

            first_shape = next(iter(shapes.values()))
            if all(shape == first_shape for shape in shapes.values()):
                entries = [entry for entry in entries if entry['properties'][prop] == next(iter(values))]
                for entry in entries:
                    entry['properties'].pop(prop)

        group[json.dumps([{
            'has_offset': entry['has_offset'],
            'properties': entry['properties'],
            'shape': [[value * 16 for value in shape] for shape in entry['shape']]
        } for entry in entries])].append(block)

    i = 0
    return [{
        'group': (i := i + 1) if len(json.loads(shapes)) > 1 else 0,
        'blocks': blocks,
        'shapes': json.loads(shapes)
    } for shapes, blocks in group.items()]


def format_blocks(blocks: dict, items: dict) -> list[dict]:
    groups = [{}]
    formatted_blocks = []

    for block, data in blocks.items():
        props = {
            name: options[options.index(data[1][name]):] + options[:options.index(data[1][name])]
            for name, options in data[0].items()
        }

        group = groups.index(props) if props in groups else len(groups)
        if group == len(groups):
            groups.append(props)

        insort(formatted_blocks, {
            'type': prefix(block),
            'item': items.get(prefix(block)),
            'group': group
        }, key=lambda x: x['group'])

    formatted_groups = format_groups(groups)
    return [{**block, 'states': formatted_groups[block['group']]} for block in formatted_blocks]


def format_groups(groups: list):
    next_id = 1
    sequences = {}
    formatted_groups = []

    for group, perm in zip(groups, get_best_sequences(groups)):
        ref = None
        sequence = ()
        formatted_group = []

        for state in perm:
            sequence += (state,)
            if sequence not in sequences:
                sequences[sequence] = next_id
                next_id += 1

            formatted_group.append({
                'id': sequences[sequence],
                'idx': len(sequence) - 1,
                'ref': ref,
                'name': state[0],
                'options': group[state[0]],
            })
            ref = sequences[sequence]
        formatted_groups.append(formatted_group)

    return formatted_groups


def get_best_sequences(groups: list[dict[str, list]]):

    def common_len(a, b):
        i = 0
        while i < len(a) and i < len(b) and a[i] == b[i]:
            i += 1
        return i

    counter = Counter()
    hgroups = [[(name, tuple(sorted(opts))) for name, opts in group.items()] for group in groups]
    counter.update(sum(hgroups, []))

    sequences_perms = [[
        list(perm) + [state for state in states if counter[state] <= 1]
        for perm in permutations([state for state in states if counter[state] > 1])
    ] for states in hgroups]

    sequences = []
    while sequences_perms:
        sequences.append(max(
            sequences_perms.pop(0),
            key=lambda seqs: sum(common_len(seqs, seq) for seq in sequences) + sum(
                max(common_len(seqs, seq) for seq in remaining_seqs)
                for remaining_seqs in sequences_perms
            ),
        ))

    return sequences
