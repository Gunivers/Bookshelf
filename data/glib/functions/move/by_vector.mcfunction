#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:move/by_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.collision dummy [{"text":"GLib ","color":"gold"},{"text":"Collision Type","color":"dark_gray"}]
scoreboard objectives add glib.precision dummy [{"text":"GLib ","color":"gold"},{"text":"Precision Type","color":"dark_gray"}]

scoreboard objectives add glib.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add glib.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add glib.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# Manage precision of collision detection (1000 = 1 block, 500 = 0.5 blocks). More the system is accurate and more it will be heavy to run.
scoreboard players set @s[tag=!glib.config.override] glib.precision 2000
tag @s[tag=glib.config.override] remove glib.config.override

#__________________________________________________
# CODE

# Absurd values security
#scoreboard players set @s[scores={glib.var4=1001..}] glib.precision 1000
scoreboard players set @s[scores={glib.precision=..-1}] glib.precision 1000

# Backup
scoreboard players operation backup.move.vectorX glib = @s glib.vectorX
scoreboard players operation backup.move.vectorY glib = @s glib.vectorY
scoreboard players operation backup.move.vectorZ glib = @s glib.vectorZ
scoreboard players operation backup.move.res0 glib = @s glib.res0

# Start Debug
#tellraw @a ["",{"text":"X: "},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":" Y: "},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":" Z: "},{"score":{"name":"@s","objective":"glib.vectorZ"}}]
# End Debug

# Decomposition in sum of vector with parameters <= glib.precision
tag @s add glib.config.override
scoreboard players operation vector.fastNormalization.lenght glib.config = @s glib.precision
function glib:vector/classic/fast_normalize
scoreboard players operation move.vectorX glib = @s glib.vectorX
scoreboard players operation move.vectorY glib = @s glib.vectorY
scoreboard players operation move.vectorZ glib = @s glib.vectorZ

# Apply movement
scoreboard players set move.decomposition.factor glib 1000
scoreboard players operation move.decomposition.factor glib /= @s glib.res0
scoreboard players operation move.decomposition.factor.save glib = move.decomposition.factor glib
# Start Debug
#tellraw @a ["",{"text":"X: "},{"score":{"name":"move.vectorX","objective":"glib"}},{"text":" Y: "},{"score":{"name":"move.vectorY","objective":"glib"}},{"text":" Z: "},{"score":{"name":"move.vectorZ","objective":"glib"}},{"text":" Dec: "},{"score":{"name":"move.decomposition.factor","objective":"glib"}}]
# End Debug
execute at @s if score move.decomposition.factor glib matches 1.. run function glib_child:default/move/by_vector/loop

# Rest of decomposition
scoreboard players operation move.vectorX glib *= move.decomposition.factor.save glib
scoreboard players operation move.vectorY glib *= move.decomposition.factor.save glib
scoreboard players operation move.vectorZ glib *= move.decomposition.factor.save glib
scoreboard players operation move.vectorX glib -= backup.move.vectorX glib
scoreboard players operation move.vectorY glib -= backup.move.vectorY glib
scoreboard players operation move.vectorZ glib -= backup.move.vectorZ glib
scoreboard players operation move.vectorX glib *= -1 glib.const
scoreboard players operation move.vectorY glib *= -1 glib.const
scoreboard players operation move.vectorZ glib *= -1 glib.const

# Start Debug
#tellraw @a ["",{"text":"X: "},{"score":{"name":"move.vectorX","objective":"glib"}},{"text":" Y: "},{"score":{"name":"move.vectorY","objective":"glib"}},{"text":" Z: "},{"score":{"name":"move.vectorZ","objective":"glib"}},{"text":" Dec: "},{"score":{"name":"move.decomposition.factor","objective":"glib"}}]
# End Debug

# Apply movement for the rest
execute at @s run function glib_child:default/move/by_vector/loop

# Restore
scoreboard players operation @s glib.vectorX = backup.move.vectorX glib
scoreboard players operation @s glib.vectorY = backup.move.vectorY glib
scoreboard players operation @s glib.vectorZ = backup.move.vectorZ glib
scoreboard players operation @s glib.res0 = backup.move.res0 glib
