#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: bs.id:check_parent
# Documentation: $1
# Parallelizable: false
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s bs.id.target
# Input: @e bs.id.parent
# Output: @e bs.id.parent.match (tag): On every entities that have the same bs.id.parent as id.target bs.in.0
# Output: @e bs.id.parent.upper (tag): On every entities that have an bs.id.parent socre upper than id.target bs.in.0
# Output: @e bs.id.parent.upper (tag): On every entities that have an bs.id.parent socre lower than id.target bs.in.0
# Output: @s bs.id.parent.checker (tag)

#__________________________________________________
# INIT

scoreboard objectives add bs.id.target dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Target ID","color":"aqua"}]
scoreboard objectives add bs.id.parent dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Parent ID","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=bs.id.parent.match] remove bs.id.parent.match
tag @e[tag=bs.id.parent.upper] remove bs.id.parent.upper
tag @e[tag=bs.id.parent.lower] remove bs.id.parent.lower
tag @e[tag=bs.id.parent.checker] remove bs.id.parent.checker

scoreboard players operation @e bs.id.parent -= @s bs.id.target
tag @e[scores={bs.id.parent=0}] add bs.id.parent.match
tag @e[scores={bs.id.parent=..-1}] add bs.id.parent.lower
tag @e[scores={bs.id.parent=-1..}] add bs.id.parent.upper
tag @s add bs.id.parent.checker
scoreboard players operation @e bs.id.parent += @s bs.id.target
