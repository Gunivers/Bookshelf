execute as @e[tag=Glib_Example_System] at @s run scoreboard players operation @s glib.var0 = @s glib.blockId
execute as @e[tag=Glib_Example_System] at @s run function glib:block/convert/id_to_block
kill @e[tag=Glib_Example_System]
