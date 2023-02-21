#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_relative_as_to_at/accuracy/10-3
# Documentation: https://bs-core.readthedocs.io//entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rx dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Relative X","color":"aqua"}]
scoreboard objectives add bs.link.ry dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Relative Y","color":"aqua"}]
scoreboard objectives add bs.link.rz dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Relative Z","color":"aqua"}]

scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location X","color":"aqua"}]
scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Y","color":"aqua"}]
scoreboard objectives add bs.loc.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Location Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon area_effect_cloud ~ ~ ~ {Tags:["bs","bs_Get_Loc_Relative"]}

execute store result score @s bs.loc.x run data get entity @s Pos[0] 1000
execute store result score @s bs.loc.x run data get entity @s Pos[1] 1000
execute store result score @s bs.loc.x run data get entity @s Pos[2] 1000

execute store result score @s bs.link.rx run data get entity @e[tag=bs_Get_Loc_Relative,limit=1] Pos[0] 1000
execute store result score @s bs.link.ry run data get entity @e[tag=bs_Get_Loc_Relative,limit=1] Pos[1] 1000
execute store result score @s bs.link.rz run data get entity @e[tag=bs_Get_Loc_Relative,limit=1] Pos[2] 1000

scoreboard players operation @s bs.link.rx -= @s bs.loc.x
scoreboard players operation @s bs.link.ry -= @s bs.loc.x
scoreboard players operation @s bs.link.rz -= @s bs.loc.x
