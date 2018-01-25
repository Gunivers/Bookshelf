# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Vectors/Child/Move-CollisionS

# CHILD OF: Gunivers-Lib:Entity/Vectors/Move

# CODE:

scoreboard players tag @s add CollisionS
execute @s ~ ~ ~ detect ~ ~ ~ air 0 scoreboard players tag @s remove CollisionS

scoreboard players set @s[score_Collision_min=105,score_Collision=105,tag=CollisionS] VectorSpeed 0
kill @s[type=!Player,score_Collision_min=106,score_Collision=106,tag=CollisionS]
scoreboard players tag @s[score_Collision_min=100,tag=CollisionS] add Collision


