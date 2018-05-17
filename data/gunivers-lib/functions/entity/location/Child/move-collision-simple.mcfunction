# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-CollisionS

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

scoreboard players tag @s add CollisionS
execute as @s at @s if block ~ ~ ~ air run scoreboard players tag @s remove CollisionS

scoreboard players set @s[scores={Collision=105},tag=CollisionS] VectorSpeed 0
kill @s[type=!Player,scores={Collision=106},tag=CollisionS]
scoreboard players tag @s[scores={Collision=100..},tag=CollisionS] add Collision


