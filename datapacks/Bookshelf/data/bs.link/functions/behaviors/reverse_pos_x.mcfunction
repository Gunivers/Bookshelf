scoreboard players operation @s bs.pos.x -= #link.origin.x bs.data
scoreboard players operation @s bs.pos.x -= @s bs.link.rx
scoreboard players operation @s bs.pos.x += @s bs.pos.x
scoreboard players operation @s bs.link.rx += @s bs.pos.x
execute store result score @s bs.pos.x run scoreboard players operation #link.origin.x bs.data += @s bs.link.rx
