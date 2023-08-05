tag @s remove bs.move.collision

execute as @s[scores={bs.move.collision=1..}] at @s run function bs.move:by_motion/child/collision_detect_x
tag @s[scores={bs.move.collision=1..},tag=bs.move.collisionX] add bs.move.collision

#----------------#
# bs.move.collision on Y #
#----------------#

execute as @s[scores={bs.move.collision=1..}] at @s run function bs.move:by_motion/child/collision_detect_y
tag @s[scores={bs.move.collision=1..},tag=bs.move.collisionY] add bs.move.collision

#----------------#
# bs.move.collision on Z #
#----------------#

execute as @s[scores={bs.move.collision=1..}] at @s run function bs.move:by_motion/child/collision_detect_z
tag @s[scores={bs.move.collision=1..},tag=bs.move.collisionZ] add bs.move.collision

#-----------#
# Reactions #
#-----------#

execute if entity @s[tag=bs.move.collision] run function bs_config:move/collision_reactions/_main_
