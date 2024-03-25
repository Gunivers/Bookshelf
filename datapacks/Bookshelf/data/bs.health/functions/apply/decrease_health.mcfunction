advancement grant @s only bs.health:restore_health
attribute @s minecraft:generic.max_health modifier remove 68f0b501-5dca-4abb-8b69-057945a9583d
$attribute @s minecraft:generic.max_health modifier add 68f0b501-5dca-4abb-8b69-057945a9583d "bs.health" $(x) add
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost
effect clear @s minecraft:instant_health
attribute @s minecraft:generic.max_health modifier remove 68f0b501-5dca-4abb-8b69-057945a9583d
