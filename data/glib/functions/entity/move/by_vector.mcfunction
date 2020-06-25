#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/move/by_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var6 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy

scoreboard objectives add Collision dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

#__________________________________________________
# CONFIG

# Manage precision of collision detection (1000 = 1 block). More the system is accurate and more it will be heavy to run.
scoreboard players set @s[tag=!glib.config.override] glib.var4 500

#__________________________________________________
# CODE

scoreboard players set @s[scores={glib.var4=1001..}] glib.var4 1000
scoreboard players set @s[scores={glib.var4=..-1}] glib.var4 1000

tellraw @a[tag=glib.debug,tag=glib.debug.entity.move.by_vector] ["",{"text":"[glib.debug] ","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_By_Vector"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Entity Move By_Vector","color":"green"}]
tellraw @a[tag=glib.debug,tag=glib.debug.entity.move.by_vector] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   glib.id: ","color":"red"},{"score":{"name":"@s","objective":"glib.id"}}]

tellraw @a[tag=glib.debug,tag=glib.debug.entity.move.by_vector] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]

# Copy of vectors
scoreboard players operation @s glib.var0 = @s VectorX
scoreboard players operation @s glib.var1 = @s VectorY
scoreboard players operation @s glib.var2 = @s VectorZ

# Apply speed modifier
scoreboard players operation @s glib.var0 *= @s VectorSpeed
scoreboard players operation @s glib.var1 *= @s VectorSpeed
scoreboard players operation @s glib.var2 *= @s VectorSpeed
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var1 /= 1000 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const

tellraw @a[tag=glib.debug,tag=glib.debug.entity.move.by_vector] ["",{"text":"APPLY SPEED -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}}]

scoreboard players set @s glib.var3 1

# Divide vector
execute if entity @s run function glib:entity/move/zzz_child/by_vector/loop1
tellraw @a[tag=glib.debug,tag=glib.debug.entity.move.by_vector] ["",{"text":"BREAK -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.var1"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.var2"}},{"text":".   Factor: ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}},{"text":".   Precision: ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}}]

scoreboard players operation @s[scores={glib.var3=1..}] glib.var6 = @s glib.var0
scoreboard players operation @s[scores={glib.var3=1..}] glib.var7 = @s glib.var1
scoreboard players operation @s[scores={glib.var3=1..}] glib.var8 = @s glib.var2

function glib:entity/move/zzz_child/by_vector/loop2
tellraw @a[tag=glib.debug,tag=glib.debug.entity.move.by_vector] ["",{"text":"RETURN -> ","color":"gray"},{"text":"Factor (must be 0): ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}}]
