scoreboard players set #view.raycast.block.id bs.data 0
scoreboard players set #view.raycast.hitbox.offset_x bs.data 0
scoreboard players set #view.raycast.hitbox.offset_z bs.data 0
execute if block ~ ~ ~ #bs.view:raycast/has_offset run function bs.view:raycast/hitbox/offset/get
execute if block ~ ~ ~ #bs.view:raycast/group_1 run scoreboard players add #view.raycast.block.id bs.data 1
execute if block ~ ~ ~ #bs.view:raycast/group_2 run scoreboard players add #view.raycast.block.id bs.data 2
execute if block ~ ~ ~ #bs.view:raycast/group_4 run scoreboard players add #view.raycast.block.id bs.data 4
execute if block ~ ~ ~ #bs.view:raycast/group_8 run scoreboard players add #view.raycast.block.id bs.data 8
execute if block ~ ~ ~ #bs.view:raycast/group_16 run scoreboard players add #view.raycast.block.id bs.data 16
execute if block ~ ~ ~ #bs.view:raycast/group_32 run scoreboard players add #view.raycast.block.id bs.data 32
execute if block ~ ~ ~ #bs.view:raycast/group_64 run scoreboard players add #view.raycast.block.id bs.data 64
execute store result storage bs:data _ short 1 run scoreboard players get #view.raycast.block.id bs.data
function bs.view:raycast/hitbox/block/dispatch with storage bs:data

execute if score #view.raycast.block.id bs.data matches 0 run tag @s add bs.view.raycast.hit
execute if score #view.raycast.block.id bs.data matches 0 run scoreboard players operation #view.raycast.distance bs.data = #view.raycast.min_distance bs.data
execute if score #view.raycast.block.id bs.data matches 1.. run function bs.view:raycast/collision/check/shape
execute unless score #view.raycast.distance bs.data matches 2147483647 run scoreboard players set #view.raycast.max_distance bs.data 0
execute unless score #view.raycast.distance bs.data matches 2147483647 run tp B5-0-0-0-1 ~ ~ ~
