# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

#----------------#
# Collision on X #
#----------------#

execute as @s[scores={Var1=1..,Collision=1..}] at @s run function gunivers-lib:entity/location/child/move_by_vector/collision_detect_pos_x
execute as @s[scores={Var1=..-1,Collision=1..}] at @s run function gunivers-lib:entity/location/child/move_by_vector/collision_detect_neg_x


# Reactions
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionX] VectorX *= Neg Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionX] Var7 *= Neg Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionX] Var1 *= Neg Constant
scoreboard players set @s[scores={Collision=4},tag=CollisionX] VectorX 0
scoreboard players set @s[scores={Collision=4},tag=CollisionX] Var7 0
scoreboard players set @s[scores={Collision=4},tag=CollisionX] Var1 0
kill @s[type=!player,scores={Collision=6},tag=CollisionX]
tag @s[scores={Collision=5..6},tag=CollisionX] remove DirMoving
tag @s[scores={Collision=1..},tag=CollisionX] add Collision



#----------------#
# Collision on Y #
#----------------#

execute as @s[scores={Var2=1..,Collision=1..}] at @s run function gunivers-lib:entity/location/child/move_by_vector/collision_detect_pos_y
execute as @s[scores={Var2=..-1,Collision=1..}] at @s run function gunivers-lib:entity/location/child/move_by_vector/collision_detect_neg_y


# Reactions
scoreboard players operation @s[scores={Collision=1},tag=CollisionY] VectorY *= Neg Constant
scoreboard players operation @s[scores={Collision=1},tag=CollisionY] Var8 *= Neg Constant
scoreboard players operation @s[scores={Collision=1},tag=CollisionY] Var2 *= Neg Constant
scoreboard players set @s[scores={Collision=2..4},tag=CollisionY] VectorY 0
scoreboard players set @s[scores={Collision=2..4},tag=CollisionY] Var8 0
scoreboard players set @s[scores={Collision=2..4},tag=CollisionY] Var2 0
kill @s[type=!player,scores={Collision=6},tag=CollisionY]
tag @s[scores={Collision=5..6},tag=CollisionY] remove DirMoving
tag @s[scores={Collision=1..},tag=CollisionY] add Collision



#----------------#
# Collision on Z #
#----------------#

execute as @s[scores={Var3=1..,Collision=1..}] at @s run function gunivers-lib:entity/location/child/move_by_vector/collision_detect_pos_z
execute as @s[scores={Var3=..-1,Collision=1..}] at @s run function gunivers-lib:entity/location/child/move_by_vector/collision_detect_neg_z


# Reactions
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] VectorZ *= Neg Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] Var9 *= Neg Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] Var3 *= Neg Constant
scoreboard players set @s[scores={Collision=4},tag=CollisionZ] VectorZ 0
scoreboard players set @s[scores={Collision=4},tag=CollisionZ] Var9 0
scoreboard players set @s[scores={Collision=4},tag=CollisionZ] Var3 0
kill @s[type=!player,scores={Collision=6},tag=CollisionZ]
tag @s[scores={Collision=5..6},tag=CollisionZ] remove DirMoving
tag @s[scores={Collision=1..},tag=CollisionZ] add Collision


