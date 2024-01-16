$attribute @s minecraft:generic.max_health base set $(x)
effect give @s minecraft:instant_health 1 28 true

tag @s add bs.health.break
scoreboard players operation @s bs.health.y = #health.max bs.data
scoreboard players operation @s bs.health.y -= #health.points bs.data
execute if score @s bs.health.y matches 0 run scoreboard players reset @s bs.health.y
scoreboard players reset @s bs.health.x
