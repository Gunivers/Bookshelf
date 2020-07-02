scoreboard players operation @s[scores={glib.var3=1..}] glib.var2 = @s glib.var6

# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_Forward,tag=!glib.menu] run function glib:debug/move/forward/loop2
# -----


execute at @s run function glib_child:move/forward/apply

execute at @s[scores={CollisionLocal=1..}] run function glib_child:move/forward/collision

scoreboard players remove @s glib.var3 1

tag @s remove Move-Loop2
tag @s[scores={glib.var3=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function glib_child:move/forward/loop2
