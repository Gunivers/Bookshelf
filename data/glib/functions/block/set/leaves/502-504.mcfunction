execute if score @s glib.blockId matches 502 run setblock ~ ~ ~ smooth_sandstone_stairs[facing=east,half=bottom,shape=outer_left,waterlogged=false]
execute if score @s glib.blockId matches 503 run setblock ~ ~ ~ smooth_sandstone_stairs[facing=east,half=bottom,shape=outer_right,waterlogged=true]
execute if score @s glib.blockId matches 504 run setblock ~ ~ ~ target[facing=east,half=bottom,shape=outer_right,waterlogged=false,power=0]
