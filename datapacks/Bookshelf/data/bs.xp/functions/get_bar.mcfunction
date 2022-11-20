
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:get_bar
## Documentation: https://bs-core.readthedocs.io/en/latest/XP.html#get_bar
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

execute store result score @s bs.var0 run xp query @s levels
xp set @s 130 levels
execute store result score POINTS bs run xp query @s points

scoreboard players operation @s bs.res0 = POINTS bs
scoreboard players operation @s bs.res0 *= 100 bs.const
scoreboard players operation @s bs.res0 /= 1012 bs.const

function bs.xp:set_levels

scoreboard players operation @s bs.var0 = SAVE.VAR0 bs