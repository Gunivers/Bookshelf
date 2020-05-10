tag @s remove FactorIncrease

tag @s[scores={Var1=1001..}] add FactorIncrease
tag @s[scores={Var2=1001..}] add FactorIncrease
tag @s[scores={Var3=1001..}] add FactorIncrease
tag @s[scores={Var1=..-1001}] add FactorIncrease
tag @s[scores={Var2=..-1001}] add FactorIncrease
tag @s[scores={Var3=..-1001}] add FactorIncrease

scoreboard players operation @s[tag=FactorIncrease] Var4 *= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Var1 /= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Var2 /= 2 Constant
scoreboard players operation @s[tag=FactorIncrease] Var3 /= 2 Constant


# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Init_Menu] run function glib:core/utils/debug/entity/move/by_local_vector/2
# -----

tag @s remove MoveLoop

tag @s[scores={Var1=1001..}] add MoveLoop
tag @s[scores={Var2=1001..}] add MoveLoop
tag @s[scores={Var3=1001..}] add MoveLoop
tag @s[scores={Var1=..-1001}] add MoveLoop
tag @s[scores={Var2=..-1001}] add MoveLoop
tag @s[scores={Var3=..-1001}] add MoveLoop

execute as @s[tag=MoveLoop] at @s run function glib:entity/move/child/by_local_vector/loop1
