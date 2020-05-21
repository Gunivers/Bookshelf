execute as @e[tag=Glib_Example_System] at @s run scoreboard players operation @s Var1 = @s BlockId
execute as @e[tag=Glib_Example_System] at @s run function glib:object/convert/block/id_to_block
kill @e[tag=Glib_Example_System]
