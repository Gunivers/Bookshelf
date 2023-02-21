#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:get_level_points
## Documentation: https://bs-core.readthedocs.io/en/latest/XP.html#level-points
## Note:

#__________________________________________________
## PARAMETERS

## Input: bs.in.0 (score): Considered level
## Output: bs.out.0 (score): Number of point needed to pass to the next level

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

execute if score @s bs.in.0 matches 0 run scoreboard players set @s bs.out.0 7

execute if score @s bs.in.0 matches 1..15 run function bs.xp:get_level_points/child/1-15
execute if score @s bs.in.0 matches 16..30 run function bs.xp:get_level_points/child/16-30
execute if score @s bs.in.0 matches 31.. run function bs.xp:get_level_points/child/31-