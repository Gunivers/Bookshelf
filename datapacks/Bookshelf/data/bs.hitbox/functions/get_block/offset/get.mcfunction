tp @s ~ ~ ~
execute store result score #hitbox.offset.x bs.data store result storage bs:ctx x int 1 run data get entity @s Pos[0]
execute store result score #hitbox.offset.z bs.data store result storage bs:ctx z int 1 run data get entity @s Pos[2]

execute store success score #success bs.data run function bs.hitbox:get_block/offset/fetch with storage bs:ctx
execute if score #success bs.data matches 0 run function bs.hitbox:get_block/offset/compute
execute in minecraft:overworld run tp @s -30000000 0 1600
