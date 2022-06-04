
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: glib.xp:remove_points
## Documentation: https://glib-core.readthedocs.io/en/latest/XP.html#remove_points
## Note:

#__________________________________________________
## PARAMETERS

## Input: glib.var0 (score): Points to remove to the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.RES0 glib = @s glib.res0
scoreboard players operation SAVE.VAR0 glib = @s glib.var0

function glib.xp:get_total_points

scoreboard players operation @s glib.var0 = @s glib.res0
scoreboard players operation @s glib.var0 -= SAVE.VAR0 glib

xp set @s 0 levels
xp set @s 0 points

function glib.xp:add_points

scoreboard players operation @s glib.res0 = SAVE.RES0 glib
scoreboard players operation @s glib.var0 = SAVE.VAR0 glib