tag @s remove FactorIncrease

tag @s[scores={glib.var2=1001..}] add FactorIncrease
tag @s[scores={glib.var2=..-1001}] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] glib.var3 1
scoreboard players operation @s[tag=FactorIncrease] glib.var2 /= 2 glib.const

tag @s remove MoveLoop

tag @s[scores={glib.var2=1001..}] add MoveLoop
tag @s[scores={glib.var2=..-1001}] add MoveLoop


# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_Forward,tag=!glib.menu] run function glib:debug/move/forward/loop1
# -----


execute as @s[tag=MoveLoop] at @s run function glib_child:move/forward/loop1
