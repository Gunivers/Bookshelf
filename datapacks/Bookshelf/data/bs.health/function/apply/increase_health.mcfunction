attribute @s minecraft:generic.max_health modifier remove bs.health:limit
$attribute @s minecraft:generic.max_health modifier add bs.health:limit $(x) add_value
effect give @s minecraft:instant_health 1 28 true
advancement revoke @s only bs.health:restore_health
