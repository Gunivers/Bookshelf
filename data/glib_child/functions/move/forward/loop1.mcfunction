tag @s remove glib.move.factor

tag @s[scores={glib.var2=1001..}] add glib.move.factor
tag @s[scores={glib.var2=..-1001}] add glib.move.factor
scoreboard players add @s[tag=glib.move.factor] glib.var3 1
scoreboard players operation @s[tag=glib.move.factor] glib.var2 /= 2 glib.const

tag @s remove glib.move.loop

tag @s[scores={glib.var2=1001..}] add glib.move.loop
tag @s[scores={glib.var2=..-1001}] add glib.move.loop


# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_Forward,tag=!glib.menu] run function glib:debug/move/forward/loop1
# -----


execute as @s[tag=glib.move.loop] at @s run function glib_child:move/forward/loop1
