#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.move:by_vector
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

### DEBUG
tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] [{"text":"> Bookshelf | ","color":"dark_aqua","bold":"true"},{"text":"Record from bs.move:by_local_vector","color":"green","bold":"false","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.move.by_local_vector"},"hoverEvent":{"action":"show_text","contents":"Hide this debug"}}]

tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] ["",{"text":" 1) Vector X: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":" Vector Y: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.y"},"color":"aqua"},{"text":" Vector Z: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.z"},"color":"aqua"}]
### END DEBUG

# Backup
scoreboard players operation #move.by_local_vector.backup.vector.x bs.data = @s bs.vector.x
scoreboard players operation #move.by_local_vector.backup.vector.y bs.data = @s bs.vector.y
scoreboard players operation #move.by_local_vector.backup.vector.z bs.data = @s bs.vector.z
scoreboard players operation ##move.by_local_vector.backup.out.0 bs.data = @s bs.out.0

# Compute how many unitary vector we need to compose the vector
function bs.vector:max_component
scoreboard players operation #move.by_local_vector.quotient bs.data = @s bs.out.0
scoreboard players operation #move.by_local_vector.quotient bs.data /= 1023 bs.const

# Decomposition in sum of vector with parameters <= 1023
tag @s add bs.config.override
scoreboard players operation vector.fast_normalize.length bs.config = 1023 bs.const

### DEBUG
tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] [{"text":" 2) Call bs.vector:fast_normalize","color":"gray"}]
###

function bs.vector:fast_normalize

scoreboard players operation #move.by_local_vector.normed_vector.x bs.data = @s bs.vector.x
scoreboard players operation #move.by_local_vector.normed_vector.y bs.data = @s bs.vector.y
scoreboard players operation #move.by_local_vector.normed_vector.z bs.data = @s bs.vector.z

### DEBUG
tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] [{"text":" 3) Norm length: ","color":"gray"},{"score":{"name":"vector.fast_normalize.length","objective":"bs.bs.config"},"color":"aqua"},{"text":" Quotient: ","color":"gray"},{"score":{"name":"#move.by_local_vector.quotient","objective":"bs.data"},"color":"aqua"},{"text":" Factor: ","color":"gray"},{"score":{"name":"@s","objective":"bs.out.0"},"color":"aqua"}]

tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] [{"text":" 4) Vector X: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":" Vector Y: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.y"},"color":"aqua"},{"text":" Vector Z: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.z"},"color":"aqua"}]

tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] [{"text":" 5) Starting main loop","color":"gray"}]
### END DEBUG

# Loop over unitary vectors
scoreboard players operation #move.by_local_vector.quotient.save bs.data = #move.by_local_vector.quotient bs.data
execute at @s if score #move.by_local_vector.quotient bs.data matches 1.. run function bs.move:by_local_vector/child/loop

# Rest of decomposition
scoreboard players operation @s bs.vector.x = #move.by_local_vector.backup.vector.x bs.data
scoreboard players operation @s bs.vector.y = #move.by_local_vector.backup.vector.y bs.data
scoreboard players operation @s bs.vector.z = #move.by_local_vector.backup.vector.z bs.data

scoreboard players operation @s bs.vector.x %= #move.by_local_vector.normed_vector.x bs.data
scoreboard players operation @s bs.vector.y %= #move.by_local_vector.normed_vector.y bs.data
scoreboard players operation @s bs.vector.z %= #move.by_local_vector.normed_vector.z bs.data

### DEBUG
tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] ["",{"text":" 6) Vector X: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.x"},"color":"aqua"},{"text":" Vector Y: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.y"},"color":"aqua"},{"text":" Vector Z: ","color":"gray"},{"score":{"name":"@s","objective":"bs.vector.z"},"color":"aqua"}]

tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] [{"text":" 7) Starting rest loop","color":"gray"}]
### END DEBUG

# Apply movement for the rest
execute at @s run function bs.move:by_local_vector/child/loop

# Restore
scoreboard players operation @s bs.vector.x = #move.by_local_vector.backup.vector.x bs.data
scoreboard players operation @s bs.vector.y = #move.by_local_vector.backup.vector.y bs.data
scoreboard players operation @s bs.vector.z = #move.by_local_vector.backup.vector.z bs.data
scoreboard players operation @s bs.out.0 = #move.by_local_vector.backup.out.0 bs.data

### DEBUG
tellraw @a[tag=bs.debug.move.by_local_vector,tag=!bs.menu.active] ["",{"text":"<","bold":true,"color":"dark_aqua"}]
### END DEBUG