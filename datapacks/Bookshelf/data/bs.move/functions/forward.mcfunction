#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.move:forward
# Documentation: https://bs-core.readthedocs.io//entity#move
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.collision dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Collision Type","color":"aqua"}]
scoreboard objectives add bs.precision dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Precision Type","color":"aqua"}]

scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Front","color":"aqua"}]

#__________________________________________________
# CONFIG

# Manage precision of collision detection (1000 = 1 block, 500 = 0.5 blocks). More the system is accurate and more it will be heavy to run.
scoreboard players set @s[tag=!bs.config.override] bs.precision 1000
tag @s[tag=bs.config.override] remove bs.config.override

#__________________________________________________
# CODE

# Backup

scoreboard players operation #backup.move.vectorZ bs = @s bs.vector.z
scoreboard players operation #backup.move.out.0 bs = @s bs.out.0

# Absurd values security

scoreboard players set @s[scores={bs.precision=1001..}] bs.precision 1000
scoreboard players set @s[scores={bs.precision=..-1}] bs.precision 1000

# Decomposition in sum of vector with parameters <= bs.precision

scoreboard players operation vector.fastNormalize.Z bs = @s bs.vector.z
execute if score vector.fastNormalize.Z bs matches ..-1 run scoreboard players operation vector.fastNormalize.Z bs *= -1 bs.const
scoreboard players operation vector.fastNormalize.max bs = vector.fastNormalize.Z bs
scoreboard players operation @s bs.vector.z *= @s bs.precision
scoreboard players operation @s bs.vector.z /= vector.fastNormalize.Z bs
scoreboard players set @s bs.out.0 1000
scoreboard players operation @s bs.out.0 *= @s bs.precision
scoreboard players operation @s bs.out.0 /= vector.fastNormalize.Z bs

# Apply movement

scoreboard players set move.decomposition.factor bs 1000
scoreboard players operation move.decomposition.factor bs /= @s bs.out.0
scoreboard players operation move.decomposition.factor.save bs = move.decomposition.factor bs
execute at @s if score move.decomposition.factor bs matches 1.. run function bs.move:forward/child/loop

# Rest of decomposition

scoreboard players operation move.vectorZ bs *= move.decomposition.factor.save bs
scoreboard players operation move.vectorZ bs -= #backup.move.vectorZ bs
scoreboard players operation move.vectorZ bs *= -1 bs.const

# Apply movement for the rest

tag @s add bs.move.by_vector.rest
execute at @s run function bs.move:forward/child/loop
tag @s remove bs.move.by_vector.rest

# Restore

scoreboard players operation @s bs.vector.z = #backup.move.vectorZ bs
scoreboard players operation @s bs.out.0 = backup.move.out.0 bs
