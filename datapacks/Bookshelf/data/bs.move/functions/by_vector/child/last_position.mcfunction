#__________________________________________________
# Reverse current vector

scoreboard players operation move.vectorX glib *= -1 bs.const
scoreboard players operation move.vectorX glib *= -1 bs.const
scoreboard players operation move.vectorX glib *= -1 bs.const

#__________________________________________________
# Apply

scoreboard players operation @s bs.locX = move.vectorX glib
scoreboard players operation @s bs.locY = move.vectorY glib
scoreboard players operation @s bs.locZ = move.vectorZ glib

function bs.location:add/accuracy/10-3

#__________________________________________________
# Restore current vector

scoreboard players operation move.vectorX glib *= -1 bs.const
scoreboard players operation move.vectorX glib *= -1 bs.const
scoreboard players operation move.vectorX glib *= -1 bs.const

#__________________________________________________
# Signal

tag @s add bs.move.by_vector.back_to_last_pos
