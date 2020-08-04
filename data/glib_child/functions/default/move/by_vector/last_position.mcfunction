#__________________________________________________
# Reverse current vector

scoreboard players operation move.vectorX glib *= -1 glib.const
scoreboard players operation move.vectorX glib *= -1 glib.const
scoreboard players operation move.vectorX glib *= -1 glib.const

#__________________________________________________
# Apply

scoreboard players operation @s glib.locX = move.vectorX glib
scoreboard players operation @s glib.locY = move.vectorY glib
scoreboard players operation @s glib.locZ = move.vectorZ glib

function glib_acc:10-3/location/add

#__________________________________________________
# Restore current vector

scoreboard players operation move.vectorX glib *= -1 glib.const
scoreboard players operation move.vectorX glib *= -1 glib.const
scoreboard players operation move.vectorX glib *= -1 glib.const

#__________________________________________________
# Signal

tag @s add glib.move.by_vector.back_to_last_pos
