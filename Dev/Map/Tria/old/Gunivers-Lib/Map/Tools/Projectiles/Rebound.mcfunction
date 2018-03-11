execute @s ~ ~ ~ detect ~-1 ~ ~ air 0 scoreboard players tag @s add ReboundX
execute @s ~ ~ ~ detect ~1 ~ ~ air 0 scoreboard players tag @s add ReboundX
execute @s ~ ~ ~ detect ~ ~-1 ~ air 0 scoreboard players tag @s add ReboundY
execute @s ~ ~ ~ detect ~ ~1 ~ air 0 scoreboard players tag @s add ReboundY
execute @s ~ ~ ~ detect ~ ~ ~-1 air 0 scoreboard players tag @s add ReboundZ
execute @s ~ ~ ~ detect ~ ~ ~1 air 0 scoreboard players tag @s add ReboundZ

scoreboard players operation @s[tag=ReboundX] VectorX *= -1 Constant
scoreboard players operation @s[tag=ReboundY] VectorY *= -1 Constant
scoreboard players operation @s[tag=ReboundZ] VectorZ *= -1 Constant

scoreboard players tag @s remove ReboundX
scoreboard players tag @s remove ReboundY
scoreboard players tag @s remove ReboundZ