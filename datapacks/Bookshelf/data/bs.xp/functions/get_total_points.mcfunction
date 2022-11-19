#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:get_total_points
## Documentation: https://glib-core.readthedocs.io/en/latest/XP.html#total-points
## Note:

#__________________________________________________
## PARAMETERS

## Output: bs.xp (score): Total XP of the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

execute store result score @s bs.res0 run xp query @s points
execute store result score LEVELS glib run xp query @s levels

execute if score LEVELS glib matches 1..15 run function bs.xp:get_total_points/child/1-15
execute if score LEVELS glib matches 16..30 run function bs.xp:get_total_points/child/16-30
execute if score LEVELS glib matches 31.. run function bs.xp:get_total_points/child/31-