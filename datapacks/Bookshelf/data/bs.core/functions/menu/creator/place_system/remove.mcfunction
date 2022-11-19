execute as @e[tag=Glib_Example_System] at @s run scoreboard players operation @s glib.var0 = @s glib.blockId
execute as @e[tag=Glib_Example_System] at @s run setblock ~ ~ ~ air
#execute as @e[tag=Glib_Example_System] at @s run function bs.block:set
execute as @e[tag=Glib_Example_System] at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 10 force
kill @e[tag=Glib_Example_System]
