$attribute @s minecraft:generic.max_health base set $(x)
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost

scoreboard players reset @s bs.health.x
