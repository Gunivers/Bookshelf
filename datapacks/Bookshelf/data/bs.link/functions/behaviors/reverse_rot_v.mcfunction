scoreboard players operation @s bs.rot.v -= #link.origin.v bs.data
scoreboard players operation @s bs.rot.v -= @s bs.link.rv
scoreboard players operation @s bs.rot.v += @s bs.rot.v
scoreboard players operation @s bs.link.rv += @s bs.rot.v
execute store result score @s bs.rot.v run scoreboard players operation #link.origin.v bs.data += @s bs.link.rv
