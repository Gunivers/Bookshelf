# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.16.1)
# Last verification: 14/04/2023 (1.19.4)
# Last modification: 14/04/2023 (1.19.4)

# Original path : bs.location:add/scale/3
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#add-up-coordinates
# Note          : It was excessively more impressive in 1.12...

# DATA BACKUP -----------------------------------------------------------------

scoreboard players operation #location.add.loc.x bs = @s bs.loc.x
scoreboard players operation #location.add.loc.y bs = @s bs.loc.y
scoreboard players operation #location.add.loc.z bs = @s bs.loc.z

# CODE ------------------------------------------------------------------------

### DEBUG
tellraw @a[tag=bs.debug.location.add] [{"text":"> Bookshelf | ","color":"dark_aqua"},{"text":"Record from bs.location:add/scale/3","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.location.add"},"hoverEvent":{"action":"show_text","contents":"Hide this debug"}}]
### END DEBUG

execute at @s run function bs.core:entity/summon
tag @e[tag=bs.new,limit=1] add bs.location.add.tmp
tag @e[tag=bs.location.add.tmp] remove bs.new
execute as @e[tag=bs.location.add.tmp] at @s run function bs.location:get/accuracy/10-3

### DEBUG
tellraw @a[tag=bs.debug.location.add] ["",{"text":" Add: X=","color":"gray"},{"score":{"name":"@s","objective":"bs.loc.x"},"color":"aqua"},{"text":" Y=","color":"gray"},{"score":{"name":"@s","objective":"bs.loc.y"},"color":"aqua"},{"text":" Z=","color":"gray"},{"score":{"name":"@s","objective":"bs.loc.z"},"color":"aqua"}]
tellraw @a[tag=bs.debug.location.add] ["",{"text":" Current: X=","color":"gray"},{"score":{"name":"@e[tag=bs.location.add.tmp,limit=1]","objective":"bs.loc.x"},"color":"aqua"},{"text":" Y=","color":"gray"},{"score":{"name":"@e[tag=bs.location.add.tmp,limit=1]","objective":"bs.loc.y"},"color":"aqua"},{"text":" Z=","color":"gray"},{"score":{"name":"@e[tag=bs.location.add.tmp,limit=1]","objective":"bs.loc.z"},"color":"aqua"}]
### END DEBUG

scoreboard players operation @s bs.loc.x += @e[tag=bs.location.add.tmp,limit=1] bs.loc.x
scoreboard players operation @s bs.loc.y += @e[tag=bs.location.add.tmp,limit=1] bs.loc.y
scoreboard players operation @s bs.loc.z += @e[tag=bs.location.add.tmp,limit=1] bs.loc.z
execute as @e[tag=bs.location.add.tmp] at @s run function bs.core:entity/safe_kill

function bs.location:set/accuracy/10-3

### DEBUG
tellraw @a[tag=bs.debug.location.add] ["",{"text":" Result: X=","color":"gray"},{"score":{"name":"@s","objective":"bs.loc.x"},"color":"aqua"},{"text":" Y=","color":"gray"},{"score":{"name":"@s","objective":"bs.loc.y"},"color":"aqua"},{"text":" Z=","color":"gray"},{"score":{"name":"@s","objective":"bs.loc.z"},"color":"aqua"}]
tellraw @a[tag=bs.debug.location.add] [{"text":"<","color":"dark_aqua"}]
### END DEBUG

# DATA RESTORE ----------------------------------------------------------------

scoreboard players operation @s bs.loc.x = #location.add.loc.x bs
scoreboard players operation @s bs.loc.y = #location.add.loc.y bs
scoreboard players operation @s bs.loc.z = #location.add.loc.z bs
