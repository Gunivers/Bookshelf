execute if score @s bs.blockId matches 18700 run setblock ~ ~ ~ sculk_sensor[power=4,sculk_sensor_phase=active,waterlogged=false]
execute if score @s bs.blockId matches 18701 run setblock ~ ~ ~ sculk_sensor[power=4,sculk_sensor_phase=cooldown,waterlogged=true]
execute if score @s bs.blockId matches 18702 run setblock ~ ~ ~ sculk_sensor[power=4,sculk_sensor_phase=cooldown,waterlogged=false]
