execute at @s run function glib_accuracy:10-3/entity/location/get

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s LocX += @s glib.var0
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation @s LocY += @s glib.var1
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s LocZ += @s glib.var2
