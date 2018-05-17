# NAME: Move Entity By Vector
# PATH: gunivers-lib:entity/location/move

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Vars (Import file)
# - Gunivers-Lib:Utils/Import/Constant (Import file)

# INPUT:
# - VectorRight (score dummy)
# - VectorUp (score dummy)
# - VectorFront (score dummy)
# - VectorSpeed (score dummy)

# OUTPUT:

# CODE:
scoreboard players operation @s VectorRight *= @s VectorSpeed
scoreboard players operation @s VectorUp *= @s VectorSpeed
scoreboard players operation @s VectorFront *= @s VectorSpeed
scoreboard players operation @s VectorRight /= 1000 Constant
scoreboard players operation @s VectorUp /= 1000 Constant
scoreboard players operation @s VectorFront /= 1000 Constant
scoreboard players set @s VectorSpeed 1000

scoreboard players operation @s Var1 = @s VectorRight
scoreboard players operation @s Var2 = @s VectorUp
scoreboard players operation @s Var3 = @s VectorFront

# tellraw @a[tag=DebugMovement] ["",{"text":"   -=[ Debug Movement ]=-","color":"green"}]
# tellraw @a[tag=DebugMovement] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
# tellraw @a[tag=DebugMovement] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorRight"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorUp"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorFront"}}]
# tellraw @a[tag=DebugMovement] ["",{"text":"CALC -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Tmp1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

scoreboard players set @s Var4 0

tag @s remove FactorIncrease
tag @s[scores={Var1=1..}] add FactorIncrease
tag @s[scores={Var2=1..}] add FactorIncrease
tag @s[scores={Var3=1..}] add FactorIncrease
tag @s[scores={Var1=..-1}] add FactorIncrease
tag @s[scores={Var2=..-1}] add FactorIncrease
tag @s[scores={Var3=..-1}] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] Var4 1

# tellraw @a[tag=DebugMovement] ["",{"text":"\n>>> Loop 1 <<<","color":"green"}]

# tellraw @a[tag=DebugMovement] ["",{"text":"\nOUTPUT1 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}}]
# tellraw @a[tag=DebugMovement] ["",{"text":"OUTPUT1 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

function gunivers-lib:entity/location/child/move-directionnal-loop

scoreboard players operation @s[score_Var4_min=1] Var7 = @s Var1
scoreboard players operation @s[score_Var4_min=1] Var8 = @s Var2
scoreboard players operation @s[score_Var4_min=1] Var9 = @s Var3

# tellraw @a[tag=DebugMovement] ["",{"text":"\n>>> Loop 2 <<<","color":"green"}]
function gunivers-lib:entity/location/child/move-directionnal-loop2


