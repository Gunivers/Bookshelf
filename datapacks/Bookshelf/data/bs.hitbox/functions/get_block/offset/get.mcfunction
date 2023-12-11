tp B5-0-0-0-1 ~ ~ ~
execute store result score $hitbox.offset_x bs.out store result storage bs:ctx x int 1 run data get entity B5-0-0-0-1 Pos[0]
execute store result score $hitbox.offset_z bs.out store result storage bs:ctx z int 1 run data get entity B5-0-0-0-1 Pos[2]
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0

execute store success score #success bs.data run function bs.hitbox:get_block/offset/fetch with storage bs:ctx
execute if score #success bs.data matches 0 run function bs.hitbox:get_block/offset/compute
