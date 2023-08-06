#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:get_ata
# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#get
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

execute store result score #vector.get_ata.origin.x bs.data run data get entity @s Pos[0] 1000
execute store result score #vector.get_ata.origin.y bs.data run data get entity @s Pos[1] 1000
execute store result score #vector.get_ata.origin.z bs.data run data get entity @s Pos[2] 1000

summon armor_stand ~ ~ ~ {Tags:["bs","bs.getVector"],Invisible:1}
execute store result score @s bs.vector.x run data get entity @e[type=armor_stand,tag=bs.getVector,limit=1] Pos[0] 1000
execute store result score @s bs.vector.y run data get entity @e[type=armor_stand,tag=bs.getVector,limit=1] Pos[1] 1000
execute store result score @s bs.vector.z run data get entity @e[type=armor_stand,tag=bs.getVector,limit=1] Pos[2] 1000

scoreboard players operation @s bs.vector.x -= #vector.get_ata.origin.x bs.data
scoreboard players operation @s bs.vector.y -= #vector.get_ata.origin.y bs.data
scoreboard players operation @s bs.vector.z -= #vector.get_ata.origin.z bs.data

kill @e[tag=bs.getVector,type=armor_stand]

### DEBUG
execute if entity @a[tag=bs.debug.vector.classic.get_ata] run tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Vectors/Get_As_To_At]=-","color":"green"}]
execute if entity @a[tag=bs.debug.vector.classic.get_ata] run tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"bs.vector.x"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"bs.vector.y"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"bs.vector.z"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
