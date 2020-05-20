#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/move/by_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy
scoreboard objectives add Var7 dummy
scoreboard objectives add Var8 dummy
scoreboard objectives add Var9 dummy

scoreboard objectives add Collision dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

#__________________________________________________
# CONFIG

# Manage precision of collision detection (1000 = 1 block). More the system is accurate and more it will be heavy to run.
scoreboard players set @s[tag=!Glib_OverrideConfig] Var5 500

#__________________________________________________
# CODE

scoreboard players set @s[scores={Var5=1001..}] Var5 1000
scoreboard players set @s[scores={Var5=..-1}] Var5 1000

tellraw @a[tag=Glib_Debug,tag=Glib_Debug_entity.move.by_vector] ["",{"text":"[Glib_Debug] ","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_By_Vector"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Entity Move By_Vector","color":"green"}]
tellraw @a[tag=Glib_Debug,tag=Glib_Debug_entity.move.by_vector] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}}]

tellraw @a[tag=Glib_Debug,tag=Glib_Debug_entity.move.by_vector] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]

# Copy of vectors
scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var2 = @s VectorY
scoreboard players operation @s Var3 = @s VectorZ

# Apply speed modifier
scoreboard players operation @s Var1 *= @s VectorSpeed
scoreboard players operation @s Var2 *= @s VectorSpeed
scoreboard players operation @s Var3 *= @s VectorSpeed
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var2 /= 1000 Constant
scoreboard players operation @s Var3 /= 1000 Constant

tellraw @a[tag=Glib_Debug,tag=Glib_Debug_entity.move.by_vector] ["",{"text":"APPLY SPEED -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

scoreboard players set @s Var4 1

# Divide vector
execute if entity @s run function glib:entity/move/child/by_vector/loop1
tellraw @a[tag=Glib_Debug,tag=Glib_Debug_entity.move.by_vector] ["",{"text":"BREAK -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}},{"text":".   Factor: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}},{"text":".   Precision: ","color":"red"},{"score":{"name":"@s","objective":"Var5"}}]

scoreboard players operation @s[scores={Var4=1..}] Var7 = @s Var1
scoreboard players operation @s[scores={Var4=1..}] Var8 = @s Var2
scoreboard players operation @s[scores={Var4=1..}] Var9 = @s Var3

function glib:entity/move/child/by_vector/loop2
tellraw @a[tag=Glib_Debug,tag=Glib_Debug_entity.move.by_vector] ["",{"text":"RETURN -> ","color":"gray"},{"text":"Factor (must be 0): ","color":"red"},{"score":{"name":"@s","objective":"Var4"}}]
