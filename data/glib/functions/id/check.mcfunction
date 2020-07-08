#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib:id/check
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Parallelizable: global
# Note:

#__________________________________________________
# PARAMETERS

# Input: id.target glib.var0 (score)
# Input: @e glib.id (score)
# Output: @e glib.id.match (tag): On every entities that have the same glib.id as @s glib.targetId
# Output: @e glib.id.upper (tag): On every entities that have an glib.id socre upper than @s glib.targetId
# Output: @e glib.id.upper (tag): On every entities that have an glib.id socre lower than @s glib.targetId
# Output: @s glib.id.checker (tag) : if executed on an entity

#__________________________________________________
# INIT

scoreboard objectives add glib.id dummy [{"text":"GLib ","color":"gold"},{"text":"ID","color":"dark_gray"}]
scoreboard objectives add glib.targetId dummy [{"text":"GLib ","color":"gold"},{"text":"Target ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=glib.id.match] remove glib.id.match
tag @e[tag=glib.id.upper] remove glib.id.upper
tag @e[tag=glib.id.lower] remove glib.id.lower
tag @e[tag=glib.id.checker] remove glib.id.checker

scoreboard players operation @e glib.id -=  @s glib.targetId
tag @e[scores={glib.id=0}] add glib.id.match
tag @e[scores={glib.id=..-1}] add glib.id.lower
tag @e[scores={glib.id=-1..}] add glib.id.upper
scoreboard players operation @e glib.id +=  @s glib.targetId
tag @s add glib.id.checker

# Start Debug
execute if entity @a[tag=glib.debug.entity.id.check] run tellraw @a[tag=glib.debug] ["",{"text":"[glib.debug] ","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove glib.debug.entity.id.check"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Entity glib.id Check","color":"green"}]
execute if entity @a[tag=glib.debug.entity.id.check] as @e[tag=glib.id.checker] run tellraw @a[tag=glib.debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   glib.id: ","color":"red"},{"score":{"name":"@s","objective":"glib.id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}},{"text":"   Checker","color":"red"}]
execute if entity @a[tag=glib.debug.entity.id.check] as @e[tag=glib.id.match,tag=!glib.id.checker] run tellraw @a[tag=glib.debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   glib.id: ","color":"red"},{"score":{"name":"@s","objective":"glib.id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}},{"text":"   Match","color":"red"}]
execute if entity @a[tag=glib.debug.entity.id.check] as @e[tag=glib.id.upper,tag=!glib.id.checker] run tellraw @a[tag=glib.debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   glib.id: ","color":"red"},{"score":{"name":"@s","objective":"glib.id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}},{"text":"   Upper","color":"red"}]
execute if entity @a[tag=glib.debug.entity.id.check] as @e[tag=glib.id.lower,tag=!glib.id.checker] run tellraw @a[tag=glib.debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   glib.id: ","color":"red"},{"score":{"name":"@s","objective":"glib.id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"glib.var0"}},{"text":"   Lower","color":"red"}]
# End Debug
