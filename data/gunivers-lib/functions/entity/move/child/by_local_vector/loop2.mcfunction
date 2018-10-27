# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_local_vector/loop2

# CHILD OF: Gunivers-Lib:Entity/move/Child/by_local_vector

# CODE:

scoreboard players operation @s[scores={Var4=1..}] Var1 = @s Var7
scoreboard players operation @s[scores={Var4=1..}] Var2 = @s Var8
scoreboard players operation @s[scores={Var4=1..}] Var3 = @s Var9

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/move/by_local_vector/3
# -----

execute at @s run function gunivers-lib:entity/move/child/by_local_vector/apply

scoreboard players remove @s Var4 1

tag @s remove Move-Loop2
tag @s[scores={Var4=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function gunivers-lib:entity/move/child/by_local_vector/loop2