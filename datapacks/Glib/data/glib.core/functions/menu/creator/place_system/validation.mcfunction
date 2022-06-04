# Validation
execute if entity @s[tag=Glib_Creator_Valid_System] as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~1 ~ redstone_block
execute if entity @s[tag=Glib_Creator_Valid_System] as @e[tag=Glib_Example_System,limit=1,sort=nearest] at @s run function glib.block:set
execute if entity @s[tag=Glib_Creator_Valid_System] run tag @s remove Glib_Creator_Valid_System
