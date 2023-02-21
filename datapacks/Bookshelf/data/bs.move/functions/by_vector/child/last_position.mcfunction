#__________________________________________________
# Reverse current vector

scoreboard players operation move.vectorX bs *= -1 bs.const
scoreboard players operation move.vectorX bs *= -1 bs.const
scoreboard players operation move.vectorX bs *= -1 bs.const

#__________________________________________________
# Apply

scoreboard players operation @s bs.loc.x = move.vectorX bs
scoreboard players operation @s bs.loc.y = move.vectorY bs
scoreboard players operation @s bs.loc.z = move.vectorZ bs

function bs.location:add/accuracy/10-3

#__________________________________________________
# Restore current vector

scoreboard players operation move.vectorX bs *= -1 bs.const
scoreboard players operation move.vectorX bs *= -1 bs.const
scoreboard players operation move.vectorX bs *= -1 bs.const

#__________________________________________________
# Signal

tag @s add bs.move.by_vector.back_to_last_pos
