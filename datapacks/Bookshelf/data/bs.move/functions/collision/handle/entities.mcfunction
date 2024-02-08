scoreboard players set #move.max_size bs.data 0
$scoreboard players operation #move.max_size bs.data > @e[tag=$(solid_entities)] bs.width
$scoreboard players operation #move.max_size bs.data > @e[tag=$(solid_entities)] bs.height
execute if score #move.vx bs.data matches 1.. run scoreboard players operation #move.max_size bs.data += #move.vx bs.data
execute if score #move.vy bs.data matches 1.. run scoreboard players operation #move.max_size bs.data += #move.vy bs.data
execute if score #move.vz bs.data matches 1.. run scoreboard players operation #move.max_size bs.data += #move.vz bs.data
execute if score #move.vx bs.data matches ..-1 run scoreboard players operation #move.max_size bs.data -= #move.vx bs.data
execute if score #move.vy bs.data matches ..-1 run scoreboard players operation #move.max_size bs.data -= #move.vy bs.data
execute if score #move.vz bs.data matches ..-1 run scoreboard players operation #move.max_size bs.data -= #move.vz bs.data

$execute if score #move.max_size bs.data matches ..1000 as @e[tag=$(solid_entities),tag=!bs.move.origin,distance=..1] run return run function bs.move:collision/check/entity
$execute if score #move.max_size bs.data matches ..2000 as @e[tag=$(solid_entities),tag=!bs.move.origin,distance=..2] run return run function bs.move:collision/check/entity
$execute if score #move.max_size bs.data matches ..3000 as @e[tag=$(solid_entities),tag=!bs.move.origin,distance=..3] run return run function bs.move:collision/check/entity
$execute if score #move.max_size bs.data matches ..4000 as @e[tag=$(solid_entities),tag=!bs.move.origin,distance=..4] run return run function bs.move:collision/check/entity
$execute if score #move.max_size bs.data matches ..8000 as @e[tag=$(solid_entities),tag=!bs.move.origin,distance=..8] run return run function bs.move:collision/check/entity
$execute as @e[tag=$(solid_entities),tag=!bs.move.origin,distance=..16] run function bs.move:collision/check/entity
