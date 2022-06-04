execute if score @s glib.blockId matches 17720 run setblock ~ ~ ~ sculk_sensor[power=0,sculk_sensor_phase=active,waterlogged=true]
execute if score @s glib.blockId matches 17721 run setblock ~ ~ ~ sculk_sensor[power=0,sculk_sensor_phase=active,waterlogged=false]
execute if score @s glib.blockId matches 17722 run setblock ~ ~ ~ sculk_sensor[power=0,sculk_sensor_phase=cooldown,waterlogged=true]
