#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_relative_ata
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location X","color":"aqua"}]
scoreboard objectives add bs.loc.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Y","color":"aqua"}]
scoreboard objectives add bs.loc.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

#tellraw @a ["",{"text":"Debug | bs.location:get_relative_ata","color":"green"}]

execute at @s run function bs.location:get
#tellraw @a [{"text":"\n \u0020 Source - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.x"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.y"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.z"},"color":"gold"}]

scoreboard players operation AT_X bs = @s bs.loc.x
scoreboard players operation AT_Y bs = @s bs.loc.y
scoreboard players operation AT_Z bs = @s bs.loc.z

function bs.location:get
#tellraw @a [{"text":"\n \u0020 Dest - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.x"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.y"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.z"},"color":"gold"}]

scoreboard players operation @s bs.loc.x -= AT_X bs
scoreboard players operation @s bs.loc.y -= AT_Y bs
scoreboard players operation @s bs.loc.z -= AT_Z bs

#tellraw @a [{"text":"\n \u0020 Res - LocX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.x"},"color":"gold"},{"text":" LocY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.y"},"color":"gold"},{"text":" LocZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.loc.z"},"color":"gold"}]


execute as @e[tag=bs.new] run function bs.health:safe_kill
