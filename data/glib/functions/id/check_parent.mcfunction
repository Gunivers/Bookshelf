#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib:id/check_parent
# Documentation: $1
# Parallelizable: false
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s glib.targetId
# Input: @e glib.parentId
# Output: @e glib.parentId.match (tag): On every entities that have the same glib.parentId as id.target glib.var0
# Output: @e glib.parentId.upper (tag): On every entities that have an glib.parentId socre upper than id.target glib.var0
# Output: @e glib.parentId.upper (tag): On every entities that have an glib.parentId socre lower than id.target glib.var0
# Output: @s glib.parentId.checker (tag)

#__________________________________________________
# INIT

scoreboard objectives add glib.targetId dummy [{"text":"GLib ","color":"gold"},{"text":"Target ID","color":"dark_gray"}]
scoreboard objectives add glib.parentId dummy [{"text":"GLib ","color":"gold"},{"text":"Parent ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=glib.parentId.match] remove glib.parentId.match
tag @e[tag=glib.parentId.upper] remove glib.parentId.upper
tag @e[tag=glib.parentId.lower] remove glib.parentId.lower
tag @e[tag=glib.parentId.checker] remove glib.parentId.checker

scoreboard players operation @e glib.parentId -= @s glib.targetId
tag @e[scores={glib.parentId=0}] add glib.parentId.match
tag @e[scores={glib.parentId=..-1}] add glib.parentId.lower
tag @e[scores={glib.parentId=-1..}] add glib.parentId.upper
tag @s add glib.parentId.checker
scoreboard players operation @e glib.parentId += @s glib.targetId
