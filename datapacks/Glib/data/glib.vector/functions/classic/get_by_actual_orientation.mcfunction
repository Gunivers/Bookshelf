#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.vector:classic/get_by_actual_orientation
# Documentation: https:/glibs.rtfd.io/Vector.html#get-vector-by-actual-orientation
# Note:

#__________________________________________________
# PARAMETERS

# Output: glib.vectorX (score dummy)
# Output: glib.vectorY (score dummy)
# Output: glib.vectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.vectorX dummy [{"text":"GLib ","color":"gold"},{"text":"Vector X","color":"dark_gray"}]
scoreboard objectives add glib.vectorY dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Y","color":"dark_gray"}]
scoreboard objectives add glib.vectorZ dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tellraw @a [{"text":"----------"}]

execute store result score #ref.x glib run data get entity @s Pos[0] 1000
execute store result score #ref.y glib run data get entity @s Pos[1] 1000
execute store result score #ref.z glib run data get entity @s Pos[2] 1000

tellraw @a ["",{"text":"Vector : "},{"score":{"name":"#ref.x","objective":"glib"}},{"text":" "},{"score":{"name":"#ref.y","objective":"glib"}},{"text":" "},{"score":{"name":"#ref.z","objective":"glib"}},{"text":" \u0020 \u0020 \u0020"}]

execute positioned ^ ^ ^1 run function glib.core:default_entity
execute store result score @s glib.vectorX run data get entity @e[tag=glib.new,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s glib.vectorY run data get entity @e[tag=glib.new,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s glib.vectorZ run data get entity @e[tag=glib.new,limit=1,sort=nearest] Pos[2] 1000

tellraw @a ["",{"text":"Vector : "},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":" "},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":" "},{"score":{"name":"@s","objective":"glib.vectorZ"}},{"text":" \u0020 \u0020 \u0020"}]

scoreboard players operation @s glib.vectorX -= #ref.x glib
scoreboard players operation @s glib.vectorY -= #ref.y glib
scoreboard players operation @s glib.vectorZ -= #ref.z glib

tellraw @a ["",{"text":"Vector : "},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":" "},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":" "},{"score":{"name":"@s","objective":"glib.vectorZ"}},{"text":" \u0020 \u0020 \u0020"}]

kill @e[tag=glib.new]