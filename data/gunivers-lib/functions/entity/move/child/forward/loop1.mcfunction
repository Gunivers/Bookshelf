# NAME: Move Entity Forward
# PATH: Gunivers-Lib:Entity/move/child/forward/loop1

# CHILD OF: Gunivers-Lib:Entity/move/forward

# CODE:____________________________________________________________________________________________________

tag @s remove FactorIncrease

tag @s[scores={Var3=1001..}] add FactorIncrease
tag @s[scores={Var3=..-1001}] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] Var4 1
scoreboard players operation @s[tag=FactorIncrease] Var3 /= 2 Constant

tag @s remove MoveLoop

tag @s[scores={Var3=1001..}] add MoveLoop
tag @s[scores={Var3=..-1001}] add MoveLoop


# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_Forward,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/move/forward/loop1
# -----


execute as @s[tag=MoveLoop] at @s run function gunivers-lib:entity/move/child/forward/loop1

