scoreboard players operation @s bs.rot.h -= #link.origin.h bs.data
scoreboard players operation @s bs.rot.h -= @s bs.link.rh
scoreboard players operation @s bs.rot.h += @s bs.rot.h
scoreboard players operation @s bs.link.rh += @s bs.rot.h
execute store result score @s bs.rot.h run scoreboard players operation #link.origin.h bs.data += @s bs.link.rh
