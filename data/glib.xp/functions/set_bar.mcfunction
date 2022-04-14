
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: glib.xp:set_bar
## Documentation: https://glib-core.readthedocs.io/en/latest/XP.html#set_bar
## Note:

#__________________________________________________
## PARAMETERS

## Input: glib.var0 (score): value (in %) to set the bar to.

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.RES0 glib = @s glib.res0
scoreboard players operation PROGRESS glib = @s glib.var0
execute store result score @s glib.var0 run xp query @s levels
function glib.xp:get_level_points

scoreboard players operation @s glib.var0 = @s glib.res0
scoreboard players operation @s glib.var0 *= PROGRESS glib
scoreboard players operation @s glib.var0 /= 100 glib.const

execute if score @s glib.var0 = @s glib.res0 run scoreboard players remove @s glib.var0 1

function glib.xp:set_points

scoreboard players operation @s glib.res0 = SAVE.RES0 glib
scoreboard players operation @s glib.var0 = PROGRESS glib