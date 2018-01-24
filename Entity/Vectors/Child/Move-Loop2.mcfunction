# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Vectors/Child/Move-Loop2

# CHILD OF: Gunivers-Lib:Entity/Vector/Move

# CODE:

scoreboard players operation @s[score_Tmp4_min=1] Tmp1 = @s Tmp7
scoreboard players operation @s[score_Tmp4_min=1] Tmp2 = @s Tmp8
scoreboard players operation @s[score_Tmp4_min=1] Tmp3 = @s Tmp9

# DEBUG
# tellraw @a[tag=DebugMovement] ["",{"text":"\nOUTPUT2 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}}]
# tellraw @a[tag=DebugMovement] ["",{"text":"OUTPUT2 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]
# #execute @s[tag=Debug] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
# execute @s[tag=Debug] ~ ~ ~ summon Falling_Block ~ ~-1 ~ {Block:"minecraft:stone_button",Time:1,NoGravity:1,Tags:["Debug"]}
# END DEBUG

execute @s[score_Collision_min=1,score_Collision=99] ~ ~ ~ function Gunivers-Lib:Entity/Vectors/Child/Move-Collision
execute @s[score_Collision_min=100,score_Collision=199] ~ ~ ~ function Gunivers-Lib:Entity/Vectors/Child/Move-CollisionS
function Gunivers-Lib:Entity/Vectors/Child/Move-Child

scoreboard players remove @s Tmp4 1

scoreboard players tag @s remove Move-Loop2
scoreboard players tag @s[score_Tmp4_min=1] add Move-Loop2
execute @s[tag=Move-Loop2] ~ ~ ~ function Gunivers-Lib:Entity/Vectors/Child/Move-Loop2