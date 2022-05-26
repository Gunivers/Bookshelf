execute if score @s glib.blockId matches 17729 run setblock ~ ~ ~ sculk_sensor[power=1,sculk_sensor_phase=cooldown,waterlogged=false]
execute if score @s glib.blockId matches 17730 run setblock ~ ~ ~ sculk_sensor[power=2,sculk_sensor_phase=inactive,waterlogged=true]
execute if score @s glib.blockId matches 17731 run setblock ~ ~ ~ sculk_sensor[power=2,sculk_sensor_phase=inactive,waterlogged=false]
