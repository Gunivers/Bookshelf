scoreboard players operation @s bs.pos.y -= #link.origin.y bs.data
scoreboard players operation @s bs.pos.y -= @s bs.link.ry
scoreboard players operation @s bs.pos.y += @s bs.pos.y
scoreboard players operation @s bs.link.ry += @s bs.pos.y
execute store result score @s bs.pos.y run scoreboard players operation #link.origin.y bs.data += @s bs.link.ry
