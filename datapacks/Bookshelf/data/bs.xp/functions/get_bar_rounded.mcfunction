
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

## Output: bs.res0 (score): percentage of the bar filled

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.VAR0 bs = @s bs.var0

execute store result score POINTS bs run xp query @s points
execute store result score @s bs.var0 run xp query @s levels

function bs.xp:get_level_points
scoreboard players operation @s bs.var1 = @s bs.res0

scoreboard players operation @s bs.var0 = POINTS bs
scoreboard players operation @s bs.var0 *= 100 bs.const

function bs.math:common/divide

scoreboard players operation @s bs.var0 = SAVE.VAR0 bs



scoreboard players operation SAVE.VAR0 bs = @s bs.var0
scoreboard players operation SAVE.VAR1 bs = @s bs.var1

execute store result score LEVELS bs run xp query @s levels
xp set @s 130 levels
execute store result score POINTS bs run xp query @s points

scoreboard players operation @s bs.var0 = POINTS bs
scoreboard players operation @s bs.var0 *= 100 bs.const

scoreboard players set @s bs.var1 1012

function bs.math:common/divide

scoreboard players operation @s bs.var0 = LEVELS bs
function bs.xp:set_levels

scoreboard players operation @s bs.var0 = SAVE.VAR0 bs
scoreboard players operation @s bs.var1 = SAVE.VAR1 bs