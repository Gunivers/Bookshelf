tag @s remove FactorIncrease

tag @s[scores={glib.var3=1001..}] add FactorIncrease
tag @s[scores={glib.var3=..-1001}] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] glib.var4 1
scoreboard players operation @s[tag=FactorIncrease] glib.var3 /= 2 glib.const

tag @s remove MoveLoop

tag @s[scores={glib.var3=1001..}] add MoveLoop
tag @s[scores={glib.var3=..-1001}] add MoveLoop


# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_Forward,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/forward/loop1
# -----


execute as @s[tag=MoveLoop] at @s run function glib:entity/move/child/forward/loop1
