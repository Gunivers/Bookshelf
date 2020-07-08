#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:block/set
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.blockId dummy [{"text":"GLib ","color":"gold"},{"text":"Block ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s glib.blockId matches 0..6560 run function glib_child:block/set/nodes/0-6560
execute if score @s glib.blockId matches 6561..13121 run function glib_child:block/set/nodes/6561-13121
execute if score @s glib.blockId matches 13122..17103 run function glib_child:block/set/nodes/13122-17103
