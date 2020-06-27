scoreboard players operation @s[scores={glib.var3=1..}] glib.var0 = @s glib.var6
scoreboard players operation @s[scores={glib.var3=1..}] glib.var1 = @s glib.var7
scoreboard players operation @s[scores={glib.var3=1..}] glib.var2 = @s glib.var8

# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_ByLocalVector,tag=!glib.menu] run function glib:utils/debug/entity/move/by_local_vector/3
# -----

execute at @s run function glib_child:entity/move/by_local_vector/apply

scoreboard players remove @s glib.var3 1

tag @s remove Move-Loop2
tag @s[scores={glib.var3=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function glib_child:entity/move/by_local_vector/loop2
