tp B5-0-0-0-1 ~ ~ ~
data modify storage bs:ctx _ set from entity B5-0-0-0-1 Pos
data remove storage bs:ctx _[1]
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0

execute store success score #success bs.data run function bs.hitbox:get_block/offset/fetch with storage bs:ctx
execute if score #success bs.data matches 0 run function bs.view:raycast/hitbox/offset/compute
