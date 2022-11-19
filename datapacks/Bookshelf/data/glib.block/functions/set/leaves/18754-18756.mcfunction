execute if score @s glib.blockId matches 18754 run setblock ~ ~ ~ sculk_sensor[power=13,sculk_sensor_phase=active,waterlogged=false]
execute if score @s glib.blockId matches 18755 run setblock ~ ~ ~ sculk_sensor[power=13,sculk_sensor_phase=cooldown,waterlogged=true]
execute if score @s glib.blockId matches 18756 run setblock ~ ~ ~ sculk_sensor[power=13,sculk_sensor_phase=cooldown,waterlogged=false]
