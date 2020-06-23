scoreboard players operation @s[scores={glib.var4=1..}] glib.var3 = @s glib.var7

# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_Forward,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/forward/loop2
# -----


execute at @s run function glib:entity/move/child/forward/apply

execute at @s[scores={CollisionLocal=1..}] run function glib:entity/move/child/forward/collision

scoreboard players remove @s glib.var4 1

tag @s remove Move-Loop2
tag @s[scores={glib.var4=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function glib:entity/move/child/forward/loop2
