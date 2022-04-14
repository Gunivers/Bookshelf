#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: glib.xp:get_level_points
## Documentation: https://glib-core.readthedocs.io/en/latest/XP.html#level-points
## Note:

#__________________________________________________
## PARAMETERS

## Input: glib.var0 (score): Considered level
## Output: glib.res0 (score): Number of point needed to pass to the next level

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

execute if score @s glib.var0 matches 0 run scoreboard players set @s glib.res0 7

execute if score @s glib.var0 matches 1..15 run function glib.xp:get_level_points/child/1-15
execute if score @s glib.var0 matches 16..30 run function glib.xp:get_level_points/child/16-30
execute if score @s glib.var0 matches 31.. run function glib.xp:get_level_points/child/31-