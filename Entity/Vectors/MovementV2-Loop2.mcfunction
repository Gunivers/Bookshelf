# NAME: Mise en movement d'une entité
# PATH: Gunivers-Lib: ... /MovementV2-Loop2

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.12

# CHILD OF: Gunivers-Lib:Entity/Set/MovementV2

# CODE:

scoreboard players operation @s[score_Tmp4_min=1] Tmp1 = @s Tmp7
scoreboard players operation @s[score_Tmp4_min=1] Tmp2 = @s Tmp8
scoreboard players operation @s[score_Tmp4_min=1] Tmp3 = @s Tmp9

# DEBUG
tellraw @a[tag=DebugMovement] ["",{"text":"\nOUTPUT2 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}}]
tellraw @a[tag=DebugMovement] ["",{"text":"OUTPUT2 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]
#execute @s[tag=Debug] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @s[tag=Debug] ~ ~ ~ summon Falling_Block ~ ~-1 ~ {Block:"minecraft:stone_button",Time:1,NoGravity:1,Tags:["Debug"]}
# END DEBUG

execute @s[score_Collision_min=1] ~ ~ ~ function Gunivers-Lib:Entity/Vectors/MovementV2-Collision
function Gunivers-Lib:Entity/Vectors/MovementV2-Child

scoreboard players remove @s Tmp4 1

scoreboard players tag @s remove MovementV2-Loop2
scoreboard players tag @s[score_Tmp4_min=1] add MovementV2-Loop2
execute @s[tag=MovementV3Loop2] ~ ~ ~ function Gunivers-Lib:Entity/Vectors/MovementV2-Loop2