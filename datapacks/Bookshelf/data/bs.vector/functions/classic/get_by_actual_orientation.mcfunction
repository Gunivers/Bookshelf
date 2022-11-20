#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/get_by_actual_orientation
# Documentation: https:/mc-bookshelf.rtfd.io/Vector.html#get-vector-by-actual-orientation
# Note:

#__________________________________________________
# PARAMETERS

# Output: bs.vectorX (score dummy)
# Output: bs.vectorY (score dummy)
# Output: bs.vectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.vectorX dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add bs.vectorY dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add bs.vectorZ dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tellraw @a [{"text":"----------"}]

execute store result score #ref.x bs run data get entity @s Pos[0] 1000
execute store result score #ref.y bs run data get entity @s Pos[1] 1000
execute store result score #ref.z bs run data get entity @s Pos[2] 1000

tellraw @a ["",{"text":"Vector : "},{"score":{"name":"#ref.x","objective":"bs"}},{"text":" "},{"score":{"name":"#ref.y","objective":"bs"}},{"text":" "},{"score":{"name":"#ref.z","objective":"bs"}},{"text":" \u0020 \u0020 \u0020"}]

execute positioned ^ ^ ^1 run function bs.core:default_entity
execute store result score @s bs.vectorX run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s bs.vectorY run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s bs.vectorZ run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[2] 1000

tellraw @a ["",{"text":"Vector : "},{"score":{"name":"@s","objective":"bs.vectorX"}},{"text":" "},{"score":{"name":"@s","objective":"bs.vectorY"}},{"text":" "},{"score":{"name":"@s","objective":"bs.vectorZ"}},{"text":" \u0020 \u0020 \u0020"}]

scoreboard players operation @s bs.vectorX -= #ref.x bs
scoreboard players operation @s bs.vectorY -= #ref.y bs
scoreboard players operation @s bs.vectorZ -= #ref.z bs

tellraw @a ["",{"text":"Vector : "},{"score":{"name":"@s","objective":"bs.vectorX"}},{"text":" "},{"score":{"name":"@s","objective":"bs.vectorY"}},{"text":" "},{"score":{"name":"@s","objective":"bs.vectorZ"}},{"text":" \u0020 \u0020 \u0020"}]

kill @e[tag=bs.new]