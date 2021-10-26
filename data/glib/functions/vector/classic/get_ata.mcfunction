#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/get_ata
# Documentation: https://glib-core.readthedocs.io//entity#vector
# Parallelizable: <true/false/global>
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

execute store result score refX glib run data get entity @s Pos[0] 1000
execute store result score refY glib run data get entity @s Pos[1] 1000
execute store result score refZ glib run data get entity @s Pos[2] 1000

summon armor_stand ~ ~ ~ {Tags:["glib","glib.getVector"],Invisible:1}
execute store result score @s glib.vectorX run data get entity @e[type=armor_stand,tag=glib.getVector,limit=1] Pos[0] 1000
execute store result score @s glib.vectorY run data get entity @e[type=armor_stand,tag=glib.getVector,limit=1] Pos[1] 1000
execute store result score @s glib.vectorZ run data get entity @e[type=armor_stand,tag=glib.getVector,limit=1] Pos[2] 1000

scoreboard players operation @s glib.vectorX -= refX glib
scoreboard players operation @s glib.vectorY -= refY glib
scoreboard players operation @s glib.vectorZ -= refZ glib

kill @e[tag=glib.getVector,type=armor_stand]

### DEBUG
execute if entity @a[tag=glib.debug.vector.classic.get_ata] run tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Vectors/Get_As_To_At]=-","color":"green"}]
execute if entity @a[tag=glib.debug.vector.classic.get_ata] run tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
