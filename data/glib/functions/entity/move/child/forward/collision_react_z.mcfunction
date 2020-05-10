# NAME: Move Entity By Vector
# PATH: Glib:Entity/move/child/forward/collision_react_z

# CHILD OF: Glib:Entity/move/forward

# CODE:
#     Reaction Z
scoreboard players operation @s[scores={CollisionLocal=1..3}] Var1 += 180 Constant
scoreboard players operation @s[scores={CollisionLocal=1..3}] Var1 *= Neg Constant