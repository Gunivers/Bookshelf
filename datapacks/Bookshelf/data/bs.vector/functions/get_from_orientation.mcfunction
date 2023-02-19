#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/get_by_orientation
# Documentation: https:/mc-bookshelf.rtfd.io/Vector.html#get-vector-by-actual-orientation
# Note:

#__________________________________________________
# PARAMETERS

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

#__________________________________________________
# CODE

execute store result score #vector.get_by_orientation.origin.x bs.data run data get entity @s Pos[0] 1000
execute store result score #vector.get_by_orientation.origin.y bs.data run data get entity @s Pos[1] 1000
execute store result score #vector.get_by_orientation.origin.z bs.data run data get entity @s Pos[2] 1000

# tellraw @a ["",{"text":"Origin : "},{"score":{"name":"#vector.get_by_orientation.origin.x","objective":"bs.data"}},{"text":" "},{"score":{"name":"#vector.get_by_orientation.origin.y","objective":"bs.data"}},{"text":" "},{"score":{"name":"#vector.get_by_orientation.origin.z","objective":"bs.data"}},{"text":" \u0020 \u0020 \u0020"}]

execute at @s positioned ^ ^ ^1 run function bs.core:default_entity
execute store result score @s bs.vector.x run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s bs.vector.y run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s bs.vector.z run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[2] 1000

# tellraw @a ["",{"text":"Target : "},{"score":{"name":"@s","objective":"bs.vector.x"}},{"text":" "},{"score":{"name":"@s","objective":"bs.vector.y"}},{"text":" "},{"score":{"name":"@s","objective":"bs.vector.z"}},{"text":" \u0020 \u0020 \u0020"}]

scoreboard players operation @s bs.vector.x -= #vector.get_by_orientation.origin.x bs.data
scoreboard players operation @s bs.vector.y -= #vector.get_by_orientation.origin.y bs.data
scoreboard players operation @s bs.vector.z -= #vector.get_by_orientation.origin.z bs.data

# tellraw @a ["",{"text":"Vector : "},{"score":{"name":"@s","objective":"bs.vector.x"}},{"text":" "},{"score":{"name":"@s","objective":"bs.vector.y"}},{"text":" "},{"score":{"name":"@s","objective":"bs.vector.z"}},{"text":" \u0020 \u0020 \u0020"}]

kill @e[tag=bs.new]