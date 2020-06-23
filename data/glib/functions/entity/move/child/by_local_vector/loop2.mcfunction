scoreboard players operation @s[scores={glib.var4=1..}] glib.var = @s glib.var7
scoreboard players operation @s[scores={glib.var4=1..}] glib.var2 = @s glib.var8
scoreboard players operation @s[scores={glib.var4=1..}] glib.var3 = @s glib.var9

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/by_local_vector/3
# -----

execute at @s run function glib:entity/move/child/by_local_vector/apply

scoreboard players remove @s glib.var4 1

tag @s remove Move-Loop2
tag @s[scores={glib.var4=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function glib:entity/move/child/by_local_vector/loop2
