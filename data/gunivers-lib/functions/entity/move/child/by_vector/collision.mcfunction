# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_vector/collision

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

# CODE:

#----------------#
# Collision on X #
#----------------#
execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/move/child/by_vector/collision_detect_x
tag @s[scores={Collision=1..},tag=CollisionX] add Collision

#----------------#
# Collision on Y #
#----------------#

execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/move/child/by_vector/collision_detect_y
tag @s[scores={Collision=1..},tag=CollisionY] add Collision

#----------------#
# Collision on Z #
#----------------#

execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/move/child/by_vector/collision_detect_z
tag @s[scores={Collision=1..},tag=CollisionZ] add Collision


#------------------------#
# CBack to last position #
#------------------------#

# execute if entity @s[tag=CollisionX,tag=CollisionZ] run function gunivers-lib:entity/move/child/by_vector/last_position
# execute if entity @s[tag=CollisionX,tag=CollisionY] run function gunivers-lib:entity/move/child/by_vector/last_position
# execute if entity @s[tag=CollisionZ,tag=CollisionY] run function gunivers-lib:entity/move/child/by_vector/last_position

#-----------#
# Reactions #
#-----------#

scoreboard players set @s[tag=Collision] Var4 0

execute if entity @s[tag=Collision,scores={Collision=1}] run function gunivers-lib:entity/move/child/by_vector/collision_reactions/collision_1
execute if entity @s[tag=Collision,scores={Collision=2}] run function gunivers-lib:entity/move/child/by_vector/collision_reactions/collision_2
execute if entity @s[tag=Collision,scores={Collision=2}] run function gunivers-lib:entity/move/child/by_vector/collision_reactions/collision_3


