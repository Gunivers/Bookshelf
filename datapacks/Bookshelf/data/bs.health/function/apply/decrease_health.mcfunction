advancement grant @s only bs.health:restore_health
attribute @s minecraft:generic.max_health modifier remove bs.health:limit
$attribute @s minecraft:generic.max_health modifier add bs.health:limit $(x) add_value
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost
effect clear @s minecraft:instant_health
attribute @s minecraft:generic.max_health modifier remove bs.health:limit
