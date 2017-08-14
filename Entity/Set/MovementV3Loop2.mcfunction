# SetVectors

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Import: Vectors, Tmp9

# Input values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# Ouput values:
# - None

scoreboard players operation @s[score_Tmp4_min=1] Tmp = @s Tmp7
scoreboard players operation @s[score_Tmp4_min=1] Tmp2 = @s Tmp8
scoreboard players operation @s[score_Tmp4_min=1] Tmp3 = @s Tmp9

# DEBUG
tellraw @a[tag=DebugMovement] ["",{"text":"\nOUTPUT2 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}}]
tellraw @a[tag=DebugMovement] ["",{"text":"OUTPUT2 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]
execute @s[tag=DebugMovement] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @s[tag=DebugMovement] ~ ~ ~ summon Falling_Block ~ ~-1 ~ {Block:"minecraft:stone_button",Time:1,NoGravity:1,Tags:["Permanent"]}
# END DEBUG

execute @s[score_Collision_min=1] ~ ~ ~ function Gunivers-Lib:Entity/Set/CollisionV2
function Gunivers-Lib:Entity/Set/MovementV3Bis

scoreboard players remove @s Tmp4 1

scoreboard players tag @s remove MovementV3Loop2
scoreboard players tag @s[score_Tmp4_min=1] add MovementV3Loop2
execute @s[tag=MovementV3Loop2] ~ ~ ~ function Gunivers-Lib:Entity/Set/MovementV3Loop2