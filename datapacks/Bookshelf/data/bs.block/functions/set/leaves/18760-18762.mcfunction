execute if score @s glib.blockId matches 18760 run setblock ~ ~ ~ sculk_sensor[power=14,sculk_sensor_phase=active,waterlogged=false]
execute if score @s glib.blockId matches 18761 run setblock ~ ~ ~ sculk_sensor[power=14,sculk_sensor_phase=cooldown,waterlogged=true]
execute if score @s glib.blockId matches 18762 run setblock ~ ~ ~ sculk_sensor[power=14,sculk_sensor_phase=cooldown,waterlogged=false]
