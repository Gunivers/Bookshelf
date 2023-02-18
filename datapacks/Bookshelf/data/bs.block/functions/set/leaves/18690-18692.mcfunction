execute if score @s bs.blockId matches 18690 run setblock ~ ~ ~ sculk_sensor[power=2,sculk_sensor_phase=cooldown,waterlogged=false]
execute if score @s bs.blockId matches 18691 run setblock ~ ~ ~ sculk_sensor[power=3,sculk_sensor_phase=inactive,waterlogged=true]
execute if score @s bs.blockId matches 18692 run setblock ~ ~ ~ sculk_sensor[power=3,sculk_sensor_phase=inactive,waterlogged=false]
