#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:move/by_vector
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.precision dummy [{"text":"GLib ","color":"gold"},{"text":"Precision Type","color":"dark_gray"}]

scoreboard objectives add glib.vectorLeft dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Left","color":"dark_gray"}]
scoreboard objectives add glib.vectorUp dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Up","color":"dark_gray"}]
scoreboard objectives add glib.vectorFront dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Front","color":"dark_gray"}]

#__________________________________________________
# CONFIG

# Manage precision of collision detection (1000 = 1 block, 500 = 0.5 blocks). More the system is accurate and more it will be heavy to run.
scoreboard players set @s[tag=!glib.config.override] glib.precision 1000
tag @s[tag=glib.config.override] remove glib.config.override

#__________________________________________________
# CODE

# Backup

scoreboard players operation #backup.move.vectorX glib = @s glib.vectorLeft
scoreboard players operation #backup.move.vectorY glib = @s glib.vectorUp
scoreboard players operation #backup.move.vectorZ glib = @s glib.vectorFront
scoreboard players operation #backup.move.res0 glib = @s glib.res0

# Absurd values security

scoreboard players set @s[scores={glib.precision=1001..}] glib.precision 1000
scoreboard players set @s[scores={glib.precision=..-1}] glib.precision 1000

# Decomposition in sum of vector with parameters <= glib.precision

tag @s add glib.config.override
scoreboard players operation vector.fastNormalization.lenght glib.config = @s glib.precision
function glib:vector/local/fast_normalize

# Apply movement

scoreboard players set move.decomposition.factor glib 1000
scoreboard players operation move.decomposition.factor glib /= @s glib.res0
scoreboard players operation move.decomposition.factor.save glib = move.decomposition.factor glib
execute at @s if score move.decomposition.factor glib matches 1.. run function glib:move/by_local_vector/child/loop

# Rest of decomposition

scoreboard players operation move.vectorX glib *= move.decomposition.factor.save glib
scoreboard players operation move.vectorY glib *= move.decomposition.factor.save glib
scoreboard players operation move.vectorZ glib *= move.decomposition.factor.save glib
scoreboard players operation move.vectorX glib -= #backup.move.vectorX glib
scoreboard players operation move.vectorY glib -= #backup.move.vectorY glib
scoreboard players operation move.vectorZ glib -= #backup.move.vectorZ glib
scoreboard players operation move.vectorX glib *= -1 glib.const
scoreboard players operation move.vectorY glib *= -1 glib.const
scoreboard players operation move.vectorZ glib *= -1 glib.const

# Apply movement for the rest

tag @s add glib.move.by_vector.rest
execute at @s run function glib:move/by_local_vector/child/loop
tag @s remove glib.move.by_vector.rest

# Restore

scoreboard players operation @s glib.vectorX = #backup.move.vectorX glib
scoreboard players operation @s glib.vectorY = #backup.move.vectorY glib
scoreboard players operation @s glib.vectorZ = #backup.move.vectorZ glib
scoreboard players operation @s glib.res0 = backup.move.res0 glib
