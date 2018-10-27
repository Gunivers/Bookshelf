# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/forward/collision

# CHILD OF: Gunivers-Lib:Entity/move/forward

# CODE:____________________________________________________________________________________________________

# DETECTION

execute store result score @s Var1 run data get entity @s Rotation[0] 1
execute store result score @s Var2 run data get entity @s Rotation[1] 1
#     Detect X
execute at @s[scores={CollisionLocal=1..,Var1=1..179}] run function gunivers-lib:entity/move/child/forward/collision_detect_neg_x
execute at @s[scores={CollisionLocal=1..,Var1=-179..-1}] run function gunivers-lib:entity/move/child/forward/collision_detect_pos_x
#     Detect Y
execute at @s[scores={CollisionLocal=1..,Var2=1..}] run function gunivers-lib:entity/move/child/forward/collision_detect_neg_y
execute at @s[scores={CollisionLocal=1..,Var2=..-1}] run function gunivers-lib:entity/move/child/forward/collision_detect_pos_y
#     Detect Z
execute at @s[scores={CollisionLocal=1..,Var1=..-91}] run function gunivers-lib:entity/move/child/forward/collision_detect_neg_z
execute at @s[scores={CollisionLocal=1..,Var1=91..}] run function gunivers-lib:entity/move/child/forward/collision_detect_neg_z
execute at @s[scores={CollisionLocal=1..,Var1=-89..89}] run function gunivers-lib:entity/move/child/forward/collision_detect_pos_z

# REACTIONS

execute if entity @s[tag=CollisionLocalX] run function gunivers-lib:entity/move/child/forward/collision_react_x
execute if entity @s[tag=CollisionLocalY] run function gunivers-lib:entity/move/child/forward/collision_react_y
execute if entity @s[tag=CollisionLocalZ] run function gunivers-lib:entity/move/child/forward/collision_react_z

# UPDATE

function gunivers-lib:entity/orientation/set
