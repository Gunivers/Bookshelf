
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: glib.xp:get_bar
## Documentation: https://glib-core.readthedocs.io/en/latest/XP.html#get_bar
## Note:

#__________________________________________________
## PARAMETERS

## Output: glib.res0 (score): percentage of the bar filled

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.VAR0 glib = @s glib.var0

execute store result score POINTS glib run xp query @s points
execute store result score @s glib.var0 run xp query @s levels

function glib.xp:get_level_points
scoreboard players operation LEVEL_POINTS glib = @s glib.res0

scoreboard players operation @s glib.res0 = POINTS glib
scoreboard players operation @s glib.res0 *= 100 glib.const
scoreboard players operation @s glib.res0 /= LEVEL_POINTS glib

scoreboard players operation @s glib.var0 = SAVE.VAR0 glib