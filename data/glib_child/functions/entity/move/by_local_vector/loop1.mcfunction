tag @s remove FactorIncrease

tag @s[scores={glib.var0=1001..}] add FactorIncrease
tag @s[scores={glib.var1=1001..}] add FactorIncrease
tag @s[scores={glib.var2=1001..}] add FactorIncrease
tag @s[scores={glib.var0=..-1001}] add FactorIncrease
tag @s[scores={glib.var1=..-1001}] add FactorIncrease
tag @s[scores={glib.var2=..-1001}] add FactorIncrease

scoreboard players operation @s[tag=FactorIncrease] glib.var3 *= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var0 /= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var1 /= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var2 /= 2 glib.const


# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_ByLocalVector,tag=!glib.menu] run function glib:utils/debug/entity/move/by_local_vector/2
# -----

tag @s remove MoveLoop

tag @s[scores={glib.var0=1001..}] add MoveLoop
tag @s[scores={glib.var1=1001..}] add MoveLoop
tag @s[scores={glib.var2=1001..}] add MoveLoop
tag @s[scores={glib.var0=..-1001}] add MoveLoop
tag @s[scores={glib.var1=..-1001}] add MoveLoop
tag @s[scores={glib.var2=..-1001}] add MoveLoop

execute as @s[tag=MoveLoop] at @s run function glib_child:entity/move/by_local_vector/loop1
