
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:remove_points
## Documentation: https://bs-core.readthedocs.io/en/latest/XP.html#remove_points
## Note:

#__________________________________________________
## PARAMETERS

## Input: bs.in.0 (score): Points to remove to the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation SAVE.RES0 bs = @s bs.out.0
scoreboard players operation SAVE.VAR0 bs = @s bs.in.0

function bs.xp:get_total_points

scoreboard players operation @s bs.in.0 = @s bs.out.0
scoreboard players operation @s bs.in.0 -= SAVE.VAR0 bs

xp set @s 0 levels
xp set @s 0 points

function bs.xp:add_points

scoreboard players operation @s bs.out.0 = SAVE.RES0 bs
scoreboard players operation @s bs.in.0 = SAVE.VAR0 bs