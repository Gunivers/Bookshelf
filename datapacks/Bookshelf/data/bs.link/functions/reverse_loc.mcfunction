#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:reverse_loc
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Relative X","color":"aqua"}]
scoreboard objectives add bs.link.ry dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Relative Y","color":"aqua"}]
scoreboard objectives add bs.link.rz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Relative Z","color":"aqua"}]

scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link To","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

#   Relative Position
execute store result score @s bs.in.0 run data get entity @s Pos[0] 1000
execute store result score @s bs.in.1 run data get entity @s Pos[1] 1000
execute store result score @s bs.in.2 run data get entity @s Pos[2] 1000

execute store result score @s bs.in.3 run data get entity @e[tag=bs.id.match,limit=1,sort=nearest] Pos[0] 1000
execute store result score @s bs.in.4 run data get entity @e[tag=bs.id.match,limit=1,sort=nearest] Pos[1] 1000
execute store result score @s bs.in.4 run data get entity @e[tag=bs.id.match,limit=1,sort=nearest] Pos[2] 1000

scoreboard players operation @s bs.in.3 -= @s bs.in.0
scoreboard players operation @s bs.in.4 -= @s bs.in.1
scoreboard players operation @s bs.in.4 -= @s bs.in.2

### DEBUG
#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Link/Imitate_Loc]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative X: ","color":"red"},{"score":{"name":"@s","objective":"bs.in.3"}},{"text":".   Old Relative X: ","color":"red"},{"score":{"name":"@s","objective":"bs.link.rx"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"bs.in.4"}},{"text":".   Old Relative Y: ","color":"red"},{"score":{"name":"@s","objective":"bs.link.ry"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"New Relative Z: ","color":"red"},{"score":{"name":"@s","objective":"bs.in.4"}},{"text":".   Old Relative Z: ","color":"red"},{"score":{"name":"@s","objective":"bs.link.rz"}}]
### END DEBUG

scoreboard players operation @s bs.in.3 -= @s bs.link.rx
scoreboard players operation @s bs.in.4 -= @s bs.link.ry
scoreboard players operation @s bs.in.4 -= @s bs.link.rz

scoreboard players operation @s bs.in.0 -= @s bs.in.3
scoreboard players operation @s bs.in.1 -= @s bs.in.4
scoreboard players operation @s bs.in.2 -= @s bs.in.4

function bs.location:set/accuracy/10-3

function bs.link:update_link_x
function bs.link:update_link_y
function bs.link:update_link_z
