# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/forward/collision_react_z

# CHILD OF: Gunivers-Lib:Entity/move/forward

# CODE:
#     Reaction Z
scoreboard players operation @s[scores={CollisionLocal=1..3}] Var1 += 180 Constant
scoreboard players operation @s[scores={CollisionLocal=1..3}] Var1 *= Neg Constant