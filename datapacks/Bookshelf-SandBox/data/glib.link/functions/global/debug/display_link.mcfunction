function bs.core:default_entity

tag @e[tag=bs.new,limit=1,sort=nearest] add bs.link.debug.display

scoreboard players operation @e[tag=bs.new,tag=bs.link.debug.display] bs.vector.x = @s bs.link.rx
scoreboard players operation @e[tag=bs.new,tag=bs.link.debug.display] bs.vector.y = @s bs.link.ry
scoreboard players operation @e[tag=bs.new,tag=bs.link.debug.display] bs.vector.z = @s bs.link.rz

scoreboard players operation @e[tag=bs.new,tag=bs.link.debug.display] bs.vector.x /= 10 bs.const
scoreboard players operation @e[tag=bs.new,tag=bs.link.debug.display] bs.vector.y /= 10 bs.const
scoreboard players operation @e[tag=bs.new,tag=bs.link.debug.display] bs.vector.z /= 10 bs.const

scoreboard players set @e[tag=bs.new,tag=bs.link.debug.display] bs.lifetime -11

tag @e[tag=bs.link.debug.display] remove bs.new

execute as @e[tag=bs.link.debug.display] run function bs.move:by_vector
execute as @e[tag=bs.link.debug.display] at @s run particle dust 0.196 0.588 0.980 0.3 ~ ~ ~