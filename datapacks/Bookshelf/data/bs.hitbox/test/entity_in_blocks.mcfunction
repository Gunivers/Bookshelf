# @batch bs.hitbox
# @dummy

await entity B5-0-0-0-1

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air
setblock ~-1 ~ ~-1 minecraft:bookshelf

## |TEST CASE|: Entity is not inside a block
execute store result score #s bs.ctx run function #bs.hitbox:is_entity_in_blocks {with:{}}
assert score #s bs.ctx matches 0

## |TEST CASE|: Entity not inside a block
tp @s ~ ~ ~
execute store result score #s bs.ctx run function #bs.hitbox:is_entity_in_blocks {with:{}}
assert score #s bs.ctx matches 1
