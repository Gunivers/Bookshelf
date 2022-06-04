execute if score @s glib.blockId matches 17723 run setblock ~ ~ ~ sculk_sensor[power=0,sculk_sensor_phase=cooldown,waterlogged=false]
execute if score @s glib.blockId matches 17724 run setblock ~ ~ ~ sculk_sensor[power=1,sculk_sensor_phase=inactive,waterlogged=true]
execute if score @s glib.blockId matches 17725 run setblock ~ ~ ~ sculk_sensor[power=1,sculk_sensor_phase=inactive,waterlogged=false]
