tag @s remove FactorIncrease

tag @s[scores={glib.var=1001..}] add FactorIncrease
tag @s[scores={glib.var2=1001..}] add FactorIncrease
tag @s[scores={glib.var3=1001..}] add FactorIncrease
tag @s[scores={glib.var=..-1001}] add FactorIncrease
tag @s[scores={glib.var2=..-1001}] add FactorIncrease
tag @s[scores={glib.var3=..-1001}] add FactorIncrease

scoreboard players operation @s[tag=FactorIncrease] glib.var4 *= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var /= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var2 /= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var3 /= 2 glib.const


# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/by_local_vector/2
# -----

tag @s remove MoveLoop

tag @s[scores={glib.var=1001..}] add MoveLoop
tag @s[scores={glib.var2=1001..}] add MoveLoop
tag @s[scores={glib.var3=1001..}] add MoveLoop
tag @s[scores={glib.var=..-1001}] add MoveLoop
tag @s[scores={glib.var2=..-1001}] add MoveLoop
tag @s[scores={glib.var3=..-1001}] add MoveLoop

execute as @s[tag=MoveLoop] at @s run function glib:entity/move/child/by_local_vector/loop1
