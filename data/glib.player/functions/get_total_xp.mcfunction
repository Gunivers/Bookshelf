#__________________________________________________
## INFO     Copyright © 2021 Altearn.

## Authors: Leirof
## Contributors:
## MC Version: 1.18.2
## Last check:

## Original path: glib.player:get_total_xp
## Documentation:
## Note:

#__________________________________________________
## PARAMETERS

## Output: glib.xp (score): Total XP of the player

#__________________________________________________
## INIT

scoreboard objectives add glib.xp dummy [{"text":"GLib ","color":"gold"},{"text":"XP","color":"dark_gray"}]
scoreboard objectives add glib.xp dummy [{"text":"GLib ","color":"gold"},{"text":"XP","color":"dark_gray"}]

#__________________________________________________
## CONFIG

#__________________________________________________
## CODE

execute store result score @s glib.xp run xp query @s points
execute store result score LEVELS glib run xp query @s levels

execute if score LEVELS glib matches 1..15 run function glib.player:get_total_xp/child/1-15
execute if score LEVELS glib matches 16..30 run function glib.player:get_total_xp/child/16-30
execute if score LEVELS glib matches 31.. run function glib.player:get_total_xp/child/31-