
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:get_bar_rounded
## Documentation: https://bs-core.readthedocs.io/en/latest/XP.html#get_bar_rounded
## Note:

#__________________________________________________
## PARAMETERS

## Output: bs.out.0 (score): percentage of the bar filled

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.VAR0 bs = @s bs.in.0

execute store result score POINTS bs run xp query @s points
execute store result score @s bs.in.0 run xp query @s levels

function bs.xp:get_level_points
scoreboard players operation @s bs.in.1 = @s bs.out.0

scoreboard players operation @s bs.in.0 = POINTS bs
scoreboard players operation @s bs.in.0 *= 100 bs.const

function bs.math:divide

scoreboard players operation @s bs.in.0 = SAVE.VAR0 bs



scoreboard players operation SAVE.VAR0 bs = @s bs.in.0
scoreboard players operation SAVE.VAR1 bs = @s bs.in.1

execute store result score LEVELS bs run xp query @s levels
xp set @s 130 levels
execute store result score POINTS bs run xp query @s points

scoreboard players operation @s bs.in.0 = POINTS bs
scoreboard players operation @s bs.in.0 *= 100 bs.const

scoreboard players set @s bs.in.1 1012

function bs.math:divide

scoreboard players operation @s bs.in.0 = LEVELS bs
function bs.xp:set_levels

scoreboard players operation @s bs.in.0 = SAVE.VAR0 bs
scoreboard players operation @s bs.in.1 = SAVE.VAR1 bs