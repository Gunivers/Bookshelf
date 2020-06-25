#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib:entity/id/check_parent
# Documentation: $1
# Parallelizable: false
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s glib.id.target
# Input: @e glib.id.parent
# Output: @e glib.id.parent.match (tag): On every entities that have the same glib.id.parent as id.target glib.var0
# Output: @e glib.id.parent.upper (tag): On every entities that have an glib.id.parent socre upper than id.target glib.var0
# Output: @e glib.id.parent.upper (tag): On every entities that have an glib.id.parent socre lower than id.target glib.var0
# Output: @s glib.id.parent.checker (tag)

#__________________________________________________
# INIT

scoreboard objectives add glib.id.target dummy
scoreboard objectives add glib.id.parent dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=glib.id.parent.match] remove glib.id.parent.match
tag @e[tag=glib.id.parent.upper] remove glib.id.parent.upper
tag @e[tag=glib.id.parent.lower] remove glib.id.parent.lower
tag @e[tag=glib.id.parent.checker] remove glib.id.parent.checker
scoreboard players operation @e glib.id.parent -= id.target glib.var0
tag @e[scores={glib.id.parent=0}] add glib.id.parent.match
tag @e[scores={glib.id.parent=..-1}] add glib.id.parent.lower
tag @e[scores={glib.id.parent=-1..}] add glib.id.parent.upper
tag @s add glib.id.parent.checker
scoreboard players operation @e glib.id.parent += id.target glib.var0
