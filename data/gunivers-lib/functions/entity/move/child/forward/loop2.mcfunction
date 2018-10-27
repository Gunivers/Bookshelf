# NAME: Move Entity Forward
# PATH: Gunivers-Lib:Entity/move/child/forward/loop2

# CHILD OF: Gunivers-Lib:Entity/move/forward

# CODE:

scoreboard players operation @s[scores={Var4=1..}] Var3 = @s Var7

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_Forward,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/move/forward/loop2
# -----


execute at @s run function gunivers-lib:entity/move/child/forward/apply

execute at @s[scores={CollisionLocal=1..}] run function gunivers-lib:entity/move/child/forward/collision

scoreboard players remove @s Var4 1

tag @s remove Move-Loop2
tag @s[scores={Var4=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function gunivers-lib:entity/move/child/forward/loop2