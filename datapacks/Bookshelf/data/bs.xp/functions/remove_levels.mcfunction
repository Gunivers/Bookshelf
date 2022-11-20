
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:remove_levels
## Documentation: https://bs-core.readthedocs.io/en/latest/XP.html#remove_levels
## Note:

#__________________________________________________
## PARAMETERS

## Input: bs.var0 (score): Levels to remove to the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.RES0 bs = @s bs.res0
scoreboard players operation SAVE.VAR0 bs = @s bs.var0

execute store result score @s bs.var0 run xp query @s levels
scoreboard players operation @s bs.var0 -= SAVE.VAR0 bs

xp set @s 0 levels

function bs.xp:add_levels

scoreboard players operation @s bs.res0 = SAVE.RES0 bs
scoreboard players operation @s bs.var0 = SAVE.VAR0 bs