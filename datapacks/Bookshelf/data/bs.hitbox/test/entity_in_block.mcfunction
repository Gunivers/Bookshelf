# @batch bs.hitbox
# @dummy

await entity B5-0-0-0-1

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air
setblock ~ ~ ~ minecraft:stone_slab[type=bottom]

## |TEST CASE|: Entity is not inside the block
tp @s ~.5 ~.75 ~.5
execute if function #bs.hitbox:is_entity_in_block run fail "Entity should not be inside the slab"
tp @s ~-.3 ~ ~-.3
execute if function #bs.hitbox:is_entity_in_block run fail "Entity should not be inside the slab"

## |TEST CASE|: Entity is inside the block
tp @s ~.5 ~-1 ~.5
execute unless function #bs.hitbox:is_entity_in_block run fail "Entity should be inside the slab"
tp @s ~-.29 ~ ~-.29
execute unless function #bs.hitbox:is_entity_in_block run fail "Entity should be inside the slab"
