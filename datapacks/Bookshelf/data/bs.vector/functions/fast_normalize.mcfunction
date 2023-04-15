#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/normalize
# Documentation: https://bs-core.readthedocs.io//entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: bs.vector.x (score dummy)
# Input: bs.vector.y (score dummy)
# Input: bs.vector.z (score dummy)

# Output: bs.vector.x (score dummy)
# Output: bs.vector.y (score dummy)
# Output: bs.vector.z (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

#__________________________________________________
# CONFIG

# The final vector will have (almost) this length
execute store success score #vector.fast_normalize.length bs.data run scoreboard players get @s bs.opt.0
execute if score #vector.fast_normalize.length bs.data matches 1 run scoreboard players operation #vector.fast_normalize.length bs.data = @s bs.opt.0
execute if score #vector.fast_normalize.length bs.data matches 0 run scoreboard players set #vector.fast_normalize.length bs.data 1000
scoreboard players reset @s bs.opt.0

#__________________________________________________
# CODE

### DEBUG
tellraw @a[tag=bs.debug.vector.fast_normalize] [{"text":"> Bookshelf | ","color":"dark_aqua"},{"text":"Record from bs.vector:fast_normalize","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.vector.fast_normalize"},"hoverEvent":{"action":"show_text","contents":"Hide this debug"}}]
tellraw @a[tag=bs.debug.vector.fast_normalize] [{"text":" Input: Vx=","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":"e-3 Vy=","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":"e-3 Vz=","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":"e-3","color":"gray"}]
tellraw @a[tag=bs.debug.vector.fast_normalize] [{"text":" Normalization lenght=","color":"gray"},{"score":{"name":"#vector.fast_normalize.length","objective":"bs.data"},"color":"aqua"},{"text":"e-3","color":"gray"}]
### END DEBUG

scoreboard players operation #vector.fast_normalize.x bs.data = @s bs.vector.x
scoreboard players operation #vector.fast_normalize.y bs.data = @s bs.vector.y
scoreboard players operation #vector.fast_normalize.z bs.data = @s bs.vector.z

execute if score #vector.fast_normalize.x bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.x bs.data *= -1 bs.const
execute if score #vector.fast_normalize.y bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.y bs.data *= -1 bs.const
execute if score #vector.fast_normalize.z bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.z bs.data *= -1 bs.const

scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.x bs.data
execute if score #vector.fast_normalize.y bs.data > #vector.fast_normalize.max bs.data run scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.y bs.data
execute if score #vector.fast_normalize.z bs.data > #vector.fast_normalize.max bs.data run scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.z bs.data

scoreboard players operation @s bs.vector.x *= #vector.fast_normalize.length bs.data
scoreboard players operation @s bs.vector.y *= #vector.fast_normalize.length bs.data
scoreboard players operation @s bs.vector.z *= #vector.fast_normalize.length bs.data

scoreboard players operation @s bs.vector.x /= #vector.fast_normalize.max bs.data
scoreboard players operation @s bs.vector.y /= #vector.fast_normalize.max bs.data
scoreboard players operation @s bs.vector.z /= #vector.fast_normalize.max bs.data

scoreboard players set @s bs.out.0 1000
scoreboard players operation @s bs.out.0 *= #vector.fast_normalize.length bs.data
scoreboard players operation @s bs.out.0 /= #vector.fast_normalize.max bs.data

### DEBUG
tellraw @a[tag=bs.debug.vector.fast_normalize] [{"text":" Output: Vx=","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":"e-3 Vy=","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":"e-3 Vz=","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":"e-3","color":"gray"}]
tellraw @a[tag=bs.debug.vector.fast_normalize] [{"text":" Normalization factor=","color":"gray"},{"score":{"name":"@s","objective":"bs.out.0"},"color":"aqua"},{"text":"e-3","color":"gray"}]
tellraw @a[tag=bs.debug.vector.fast_normalize] [{"text":"<","color":"dark_aqua"}]
### END DEBUG
