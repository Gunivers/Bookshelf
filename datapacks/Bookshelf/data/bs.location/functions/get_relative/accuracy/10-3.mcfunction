#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_relative_as_to_at/accuracy/10-3
# Documentation: https://glib-core.readthedocs.io//entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rx dummy [{"text":"GLib ","color":"gold"},{"text":"Link Relative X","color":"dark_gray"}]
scoreboard objectives add bs.link.ry dummy [{"text":"GLib ","color":"gold"},{"text":"Link Relative Y","color":"dark_gray"}]
scoreboard objectives add bs.link.rz dummy [{"text":"GLib ","color":"gold"},{"text":"Link Relative Z","color":"dark_gray"}]

scoreboard objectives add bs.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add bs.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add bs.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon area_effect_cloud ~ ~ ~ {Tags:["Glib","Glib_Get_Loc_Relative"]}

execute store result score @s bs.locX run data get entity @s Pos[0] 1000
execute store result score @s bs.locX run data get entity @s Pos[1] 1000
execute store result score @s bs.locX run data get entity @s Pos[2] 1000

execute store result score @s bs.link.rx run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[0] 1000
execute store result score @s bs.link.ry run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[1] 1000
execute store result score @s bs.link.rz run data get entity @e[tag=Glib_Get_Loc_Relative,limit=1] Pos[2] 1000

scoreboard players operation @s bs.link.rx -= @s bs.locX
scoreboard players operation @s bs.link.ry -= @s bs.locX
scoreboard players operation @s bs.link.rz -= @s bs.locX
