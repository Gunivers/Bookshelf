# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Loop

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:
tag @s remove FactorIncrease

tag @s[scores={Var1=1001..}] add FactorIncrease
tag @s[scores={Var2=1001..}] add FactorIncrease
tag @s[scores={Var3=1001..}] add FactorIncrease
tag @s[scores={Var1=..-1001}] add FactorIncrease
tag @s[scores={Var2=..-1001}] add FactorIncrease
tag @s[scores={Var3=..-1001}] add FactorIncrease

scoreboard players add @s[tag=FactorIncrease] Tmp4 1
scoreboard players operation @s[tag=FactorIncrease] Var1 /= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Var2 /= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Var3 /= 2 Constant

# DEBUG
# tellraw @a[tag=DebugMovement] ["",{"text":"\nOUTPUT1 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}}]
# tellraw @a[tag=DebugMovement] ["",{"text":"OUTPUT1 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]
# execute @s[tag=Debug] ~ ~ ~ summon Falling_Block ~ ~ ~ {Block:"minecraft:fence",Time:1,NoGravity:1,Tags:["Debug"]}
# END DEBUG

tag @s remove MoveLoop

tag @s[scores={Var1=1001..}] add MoveLoop
tag @s[scores={Var2=1001..}] add MoveLoop
tag @s[scores={Var3=1001..}] add MoveLoop
tag @s[scores={Var1=..-1001}] add MoveLoop
tag @s[scores={Var2=..-1001}] add MoveLoop
tag @s[scores={Var3=..-1001}] add MoveLoop

execute as @s[tag=MoveLoop] at @s run function gunivers-lib:entity/location/child/move-directionnal-loop

