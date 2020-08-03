#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors: Leirof
# MC Version: 1.13
# Last check:

# Original path: glib:block/set_ridding_falling_block
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

execute if score @s glib.blockId matches ..511 run function glib_child:default/block/set_ridding_falling_block/nodes/0-511
execute if score @s glib.blockId matches 512.. run function glib_child:default/block/set_ridding_falling_block/nodes/512-675
