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

# Input: @s bs.targetId
# Input: @e bs.parentId
# Output: @e bs.parentId.match (tag): On every entities that have the same bs.parentId as id.target bs.var0
# Output: @e bs.parentId.upper (tag): On every entities that have an bs.parentId socre upper than id.target bs.var0
# Output: @e bs.parentId.upper (tag): On every entities that have an bs.parentId socre lower than id.target bs.var0
# Output: @s bs.parentId.checker (tag)

#__________________________________________________
# INIT

scoreboard objectives add bs.targetId dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Target ID","color":"dark_gray"}]
scoreboard objectives add bs.parentId dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Parent ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=bs.parentId.match] remove bs.parentId.match
tag @e[tag=bs.parentId.upper] remove bs.parentId.upper
tag @e[tag=bs.parentId.lower] remove bs.parentId.lower
tag @e[tag=bs.parentId.checker] remove bs.parentId.checker

scoreboard players operation @e bs.parentId -= @s bs.targetId
tag @e[scores={bs.parentId=0}] add bs.parentId.match
tag @e[scores={bs.parentId=..-1}] add bs.parentId.lower
tag @e[scores={bs.parentId=-1..}] add bs.parentId.upper
tag @s add bs.parentId.checker
scoreboard players operation @e bs.parentId += @s bs.targetId
