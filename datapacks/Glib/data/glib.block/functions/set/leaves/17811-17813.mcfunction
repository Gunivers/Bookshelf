execute if score @s glib.blockId matches 17811 run setblock ~ ~ ~ sculk_sensor[power=15,sculk_sensor_phase=active,waterlogged=false]
execute if score @s glib.blockId matches 17812 run setblock ~ ~ ~ sculk_sensor[power=15,sculk_sensor_phase=cooldown,waterlogged=true]
execute if score @s glib.blockId matches 17813 run setblock ~ ~ ~ sculk_sensor[power=15,sculk_sensor_phase=cooldown,waterlogged=false]
