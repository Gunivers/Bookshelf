function #bs.hitbox:get_entity
execute store result score #raycast.is_composite bs.data if entity @s[type=#bs.hitbox:is_composite]

execute if score #raycast.is_composite bs.data matches 0 run tp B5-0-0-0-1 @s
execute if score #raycast.is_composite bs.data matches 1 at @s align xyz run tp B5-0-0-0-1 ~ ~ ~
execute store result score #raycast.min_x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #raycast.min_y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #raycast.min_z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
scoreboard players operation #raycast.min_x bs.data -= #raycast.x bs.data
scoreboard players operation #raycast.min_y bs.data -= #raycast.y bs.data
scoreboard players operation #raycast.min_z bs.data -= #raycast.z bs.data
execute store result score #raycast.max_x bs.data run scoreboard players operation #raycast.min_x bs.data *= 1000 bs.const
execute store result score #raycast.max_y bs.data run scoreboard players operation #raycast.min_y bs.data *= 1000 bs.const
execute store result score #raycast.max_z bs.data run scoreboard players operation #raycast.min_z bs.data *= 1000 bs.const

execute if score #raycast.is_composite bs.data matches 0 run function bs.raycast:entity/check/size
execute if score #raycast.is_composite bs.data matches 1 run function bs.raycast:entity/check/shape

say @s
