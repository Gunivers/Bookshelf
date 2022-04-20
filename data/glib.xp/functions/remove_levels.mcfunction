
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: glib.xp:remove_levels
## Documentation: https://glib-core.readthedocs.io/en/latest/XP.html#remove_levels
## Note:

#__________________________________________________
## PARAMETERS

## Input: glib.var0 (score): Levels to remove to the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.RES0 glib = @s glib.res0
scoreboard players operation SAVE.VAR0 glib = @s glib.var0

execute store result score @s glib.var0 run xp query @s levels
scoreboard players operation @s glib.var0 -= SAVE.VAR0 glib

xp set @s 0 levels

function glib.xp:add_levels

scoreboard players operation @s glib.res0 = SAVE.RES0 glib
scoreboard players operation @s glib.var0 = SAVE.VAR0 glib