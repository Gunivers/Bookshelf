execute if score @s glib.blockId matches 17735 run setblock ~ ~ ~ sculk_sensor[power=2,sculk_sensor_phase=cooldown,waterlogged=false]
execute if score @s glib.blockId matches 17736 run setblock ~ ~ ~ sculk_sensor[power=3,sculk_sensor_phase=inactive,waterlogged=true]
execute if score @s glib.blockId matches 17737 run setblock ~ ~ ~ sculk_sensor[power=3,sculk_sensor_phase=inactive,waterlogged=false]
