execute if score @s glib.blockId matches 17805 run setblock ~ ~ ~ sculk_sensor[power=14,sculk_sensor_phase=active,waterlogged=false]
execute if score @s glib.blockId matches 17806 run setblock ~ ~ ~ sculk_sensor[power=14,sculk_sensor_phase=cooldown,waterlogged=true]
execute if score @s glib.blockId matches 17807 run setblock ~ ~ ~ sculk_sensor[power=14,sculk_sensor_phase=cooldown,waterlogged=false]
