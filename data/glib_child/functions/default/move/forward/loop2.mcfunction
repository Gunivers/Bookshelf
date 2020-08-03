scoreboard players operation @s[scores={glib.var3=1..}] glib.var2 = @s glib.var6

# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_Forward,tag=!glib.menu] run function glib:debug/move/forward/loop2
# -----


execute at @s run function glib_child:default/move/forward/apply

execute at @s[scores={glib.collision=1..}] run function glib_child:default/move/forward/collision

scoreboard players remove @s glib.var3 1

tag @s remove glib.move.loop2
tag @s[scores={glib.var3=1..}] add glib.move.loop2
execute as @s[tag=glib.move.loop2] at @s run function glib_child:default/move/forward/loop2
