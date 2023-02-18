tag @s remove bs.collision

execute as @s[scores={bs.collision=1..}] at @s run function bs.move:by_motion/child/collision_detect_x
tag @s[scores={bs.collision=1..},tag=bs.collisionX] add bs.collision

#----------------#
# bs.collision on Y #
#----------------#

execute as @s[scores={bs.collision=1..}] at @s run function bs.move:by_motion/child/collision_detect_y
tag @s[scores={bs.collision=1..},tag=bs.collisionY] add bs.collision

#----------------#
# bs.collision on Z #
#----------------#

execute as @s[scores={bs.collision=1..}] at @s run function bs.move:by_motion/child/collision_detect_z
tag @s[scores={bs.collision=1..},tag=bs.collisionZ] add bs.collision

#-----------#
# Reactions #
#-----------#

execute if entity @s[tag=bs.collision] run function bs_config:move/collision_reactions/_main_
