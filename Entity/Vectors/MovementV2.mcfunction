# NAME: Mise en movement d'une entité
# PATH: Gunivers-Lib: ... /MovementV2

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.12

# REQUIEREMENTS:
# - Gunivers-Lib:Import/Vectors (MCfunction)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# OUTPUT:
# - None

# CODE:

scoreboard players operation @s Tmp = @s VectorX
scoreboard players operation @s Tmp2 = @s VectorY
scoreboard players operation @s Tmp3 = @s VectorZ
scoreboard players operation @s Tmp *= @s VectorSpeed
scoreboard players operation @s Tmp2 *= @s VectorSpeed
scoreboard players operation @s Tmp3 *= @s VectorSpeed
scoreboard players operation @s Tmp /= 1000 Constant
scoreboard players operation @s Tmp2 /= 1000 Constant
scoreboard players operation @s Tmp3 /= 1000 Constant

tellraw @a[tag=DebugMovement] ["",{"text":"   -=[ Debug Movement ]=-","color":"green"}]
tellraw @a[tag=DebugMovement] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
tellraw @a[tag=DebugMovement] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
tellraw @a[tag=DebugMovement] ["",{"text":"CALC -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]

scoreboard players set @s Tmp4 0

scoreboard players tag @s remove FectorIncrease
scoreboard players tag @s[score_Tmp_min=1] add FactorIncrease
scoreboard players tag @s[score_Tmp2_min=1] add FactorIncrease
scoreboard players tag @s[score_Tmp3_min=1] add FactorIncrease
scoreboard players tag @s[score_Tmp=-1] add FactorIncrease
scoreboard players tag @s[score_Tmp2=-1] add FactorIncrease
scoreboard players tag @s[score_Tmp3=-1] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] Tmp4 1

tellraw @a[tag=DebugMovement] ["",{"text":"\n>>> Loop 1 <<<","color":"green"}]

tellraw @a[tag=DebugMovement] ["",{"text":"\nOUTPUT1 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}}]
tellraw @a[tag=DebugMovement] ["",{"text":"OUTPUT1 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]

function Gunivers-Lib:Entity/Set/MovementV2-Loop

scoreboard players operation @s[score_Tmp4_min=1] Tmp7 = @s Tmp
scoreboard players operation @s[score_Tmp4_min=1] Tmp8 = @s Tmp2
scoreboard players operation @s[score_Tmp4_min=1] Tmp9 = @s Tmp3

tellraw @a[tag=DebugMovement] ["",{"text":"\n>>> Loop 2 <<<","color":"green"}]
function Gunivers-Lib:Entity/Set/MovementV2-Loop2