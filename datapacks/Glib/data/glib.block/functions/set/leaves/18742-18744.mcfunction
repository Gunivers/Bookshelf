execute if score @s glib.blockId matches 18742 run setblock ~ ~ ~ sculk_sensor[power=11,sculk_sensor_phase=active,waterlogged=false]
execute if score @s glib.blockId matches 18743 run setblock ~ ~ ~ sculk_sensor[power=11,sculk_sensor_phase=cooldown,waterlogged=true]
execute if score @s glib.blockId matches 18744 run setblock ~ ~ ~ sculk_sensor[power=11,sculk_sensor_phase=cooldown,waterlogged=false]
