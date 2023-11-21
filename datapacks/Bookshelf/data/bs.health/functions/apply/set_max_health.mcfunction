$attribute @s minecraft:generic.max_health base set $(y)
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost

tag @s remove bs.health.break
scoreboard players reset @s bs.health.y
