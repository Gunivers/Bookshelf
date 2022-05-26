execute if score @s glib.blockId matches 17799 run setblock ~ ~ ~ sculk_sensor[power=13,sculk_sensor_phase=active,waterlogged=false]
execute if score @s glib.blockId matches 17800 run setblock ~ ~ ~ sculk_sensor[power=13,sculk_sensor_phase=cooldown,waterlogged=true]
execute if score @s glib.blockId matches 17801 run setblock ~ ~ ~ sculk_sensor[power=13,sculk_sensor_phase=cooldown,waterlogged=false]
