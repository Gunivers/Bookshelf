
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:add_points
## Documentation: https://bs-core.readthedocs.io/en/latest/XP.html#add_points
## Note:

#__________________________________________________
## PARAMETERS

## Input: bs.in.0 (score): Points to add to the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation POINTS bs = @s bs.in.0

execute if score POINTS bs matches 128.. run function bs.xp:add_points/child/128-

execute if score POINTS bs matches 64.. run xp add @s 64 points
execute if score POINTS bs matches 64.. run scoreboard players remove POINTS bs 64
execute if score POINTS bs matches 32.. run xp add @s 32 points
execute if score POINTS bs matches 32.. run scoreboard players remove POINTS bs 32
execute if score POINTS bs matches 16.. run xp add @s 16 points
execute if score POINTS bs matches 16.. run scoreboard players remove POINTS bs 16
execute if score POINTS bs matches 8.. run xp add @s 8 points
execute if score POINTS bs matches 8.. run scoreboard players remove POINTS bs 8
execute if score POINTS bs matches 4.. run xp add @s 4 points
execute if score POINTS bs matches 4.. run scoreboard players remove POINTS bs 4
execute if score POINTS bs matches 2.. run xp add @s 2 points
execute if score POINTS bs matches 2.. run scoreboard players remove POINTS bs 2
execute if score POINTS bs matches 1.. run xp add @s 1 points