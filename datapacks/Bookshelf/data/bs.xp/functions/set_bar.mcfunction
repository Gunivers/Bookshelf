
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:set_bar
## Documentation: https://bs-core.readthedocs.io/en/latest/XP.html#set_bar
## Note:

#__________________________________________________
## PARAMETERS

## Input: bs.var0 (score): value (in %) to set the bar to.

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.RES0 bs = @s bs.res0
scoreboard players operation PROGRESS bs = @s bs.var0
execute store result score LEVEL bs run xp query @s levels

xp set @s 130 levels

scoreboard players set @s bs.var0 1012
scoreboard players operation @s bs.var0 *= PROGRESS bs
scoreboard players operation @s bs.var0 /= 100 bs.const
execute if score @s bs.var0 = @s bs.res0 run scoreboard players remove @s bs.var0 1
function bs.xp:set_points

scoreboard players operation @s bs.var0 = LEVELS bs
function bs.xp:set_levels

scoreboard players operation @s bs.res0 = SAVE.RES0 bs
scoreboard players operation @s bs.var0 = PROGRESS bs