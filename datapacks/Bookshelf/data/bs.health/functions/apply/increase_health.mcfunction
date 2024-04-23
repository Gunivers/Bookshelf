attribute @s minecraft:generic.max_health modifier remove 68f0b501-5dca-4abb-8b69-057945a9583d
$attribute @s minecraft:generic.max_health modifier add 68f0b501-5dca-4abb-8b69-057945a9583d "bs.health" $(x) add_value
effect give @s minecraft:instant_health 1 28 true
advancement revoke @s only bs.health:restore_health
