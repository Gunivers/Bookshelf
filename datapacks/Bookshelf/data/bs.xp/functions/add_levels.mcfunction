
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: bs.xp:add_levels
## Documentation: https://bs-core.readthedocs.io/en/latest/XP.html#add_levels
## Note:

#__________________________________________________
## PARAMETERS

## Input: bs.in.0 (score): levels to add to the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation LEVELS bs = @s bs.in.0

execute if score LEVELS bs matches 128.. run function bs.xp:add_levels/child/128-

execute if score LEVELS bs matches 64.. run xp add @s 64 levels
execute if score LEVELS bs matches 64.. run scoreboard players remove LEVELS bs 64
execute if score LEVELS bs matches 32.. run xp add @s 32 levels
execute if score LEVELS bs matches 32.. run scoreboard players remove LEVELS bs 32
execute if score LEVELS bs matches 16.. run xp add @s 16 levels
execute if score LEVELS bs matches 16.. run scoreboard players remove LEVELS bs 16
execute if score LEVELS bs matches 8.. run xp add @s 8 levels
execute if score LEVELS bs matches 8.. run scoreboard players remove LEVELS bs 8
execute if score LEVELS bs matches 4.. run xp add @s 4 levels
execute if score LEVELS bs matches 4.. run scoreboard players remove LEVELS bs 4
execute if score LEVELS bs matches 2.. run xp add @s 2 levels
execute if score LEVELS bs matches 2.. run scoreboard players remove LEVELS bs 2
execute if score LEVELS bs matches 1.. run xp add @s 1 levels