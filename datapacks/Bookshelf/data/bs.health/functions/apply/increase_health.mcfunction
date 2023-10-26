$attribute @s minecraft:generic.max_health base set $(points)

effect give @s minecraft:instant_health 1 28 true

scoreboard players operation @s bs.health.max = #health.max bs.data
scoreboard players operation @s bs.health.max -= #health.points bs.data
scoreboard players reset @s bs.health.points
