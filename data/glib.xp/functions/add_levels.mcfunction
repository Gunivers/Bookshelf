
#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: glib.xp:add_levels
## Documentation: https://glib-core.readthedocs.io/en/latest/XP.html#add_levels
## Note:

#__________________________________________________
## PARAMETERS

## Input: glib.var0 (score): levels to add to the player

#__________________________________________________
## INIT

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

scoreboard players operation LEVELS glib = @s glib.var0

execute if score LEVELS glib matches 124.. run function glib.xp:add_levels/child/loop

execute if score LEVELS glib matches 64.. run xp add @s 64 levels
execute if score LEVELS glib matches 64.. run scoreboard players remove LEVELS glib 64
execute if score LEVELS glib matches 32.. run xp add @s 32 levels
execute if score LEVELS glib matches 32.. run scoreboard players remove LEVELS glib 32
execute if score LEVELS glib matches 16.. run xp add @s 16 levels
execute if score LEVELS glib matches 16.. run scoreboard players remove LEVELS glib 16
execute if score LEVELS glib matches 8.. run xp add @s 8 levels
execute if score LEVELS glib matches 8.. run scoreboard players remove LEVELS glib 8
execute if score LEVELS glib matches 4.. run xp add @s 4 levels
execute if score LEVELS glib matches 4.. run scoreboard players remove LEVELS glib 4
execute if score LEVELS glib matches 2.. run xp add @s 2 levels
execute if score LEVELS glib matches 2.. run scoreboard players remove LEVELS glib 2
execute if score LEVELS glib matches 1.. run xp add @s 1 levels