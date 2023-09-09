scoreboard players operation @s bs.pos.z -= #link.origin.z bs.data
scoreboard players operation @s bs.pos.z -= @s bs.link.rz
scoreboard players operation @s bs.pos.z += @s bs.pos.z
scoreboard players operation @s bs.link.rz += @s bs.pos.z
execute store result score @s bs.pos.z run scoreboard players operation #link.origin.z bs.data += @s bs.link.rz
