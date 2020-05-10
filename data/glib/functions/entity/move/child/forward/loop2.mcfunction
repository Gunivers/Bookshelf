# NAME: Move Entity Forward
# PATH: Glib:Entity/move/child/forward/loop2

# CHILD OF: Glib:Entity/move/forward

# CODE:

scoreboard players operation @s[scores={Var4=1..}] Var3 = @s Var7

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_Forward,tag=!Glib_Init_Menu] run function glib:core/utils/debug/entity/move/forward/loop2
# -----


execute at @s run function glib:entity/move/child/forward/apply

execute at @s[scores={CollisionLocal=1..}] run function glib:entity/move/child/forward/collision

scoreboard players remove @s Var4 1

tag @s remove Move-Loop2
tag @s[scores={Var4=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function glib:entity/move/child/forward/loop2