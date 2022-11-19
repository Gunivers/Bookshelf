#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: bs.id:check
# Documentation: https://glib-core.readthedocs.io//entity#id
# Parallelizable: global
# Note:

#__________________________________________________
# PARAMETERS

# Input: id.target bs.var0 (score)
# Input: @e bs.id (score)
# Output: @e bs.id.match (tag): On every entities that have the same bs.id as @s bs.targetId
# Output: @e bs.id.upper (tag): On every entities that have an bs.id socre upper than @s bs.targetId
# Output: @e bs.id.upper (tag): On every entities that have an bs.id socre lower than @s bs.targetId
# Output: @s bs.id.checker (tag) : if executed on an entity

#__________________________________________________
# INIT

scoreboard objectives add bs.id dummy [{"text":"GLib ","color":"gold"},{"text":"ID","color":"dark_gray"}]
scoreboard objectives add bs.targetId dummy [{"text":"GLib ","color":"gold"},{"text":"Target ID","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=bs.id.match] remove bs.id.match
tag @e[tag=bs.id.upper] remove bs.id.upper
tag @e[tag=bs.id.lower] remove bs.id.lower
tag @e[tag=bs.id.checker] remove bs.id.checker

scoreboard players operation @e bs.id -= @s bs.targetId
tag @e[scores={bs.id=0}] add bs.id.match
tag @e[scores={bs.id=..-1}] add bs.id.lower
tag @e[scores={bs.id=-1..}] add bs.id.upper
scoreboard players operation @e bs.id += @s bs.targetId
tag @s add bs.id.checker

# Start Debug
execute if entity @a[tag=bs.debug.entity.id.check] run tellraw @a[tag=bs.debug] ["",{"text":"[bs.debug] ","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.entity.id.check"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Entity bs.id Check","color":"green"}]
execute if entity @a[tag=bs.debug.entity.id.check] as @e[tag=bs.id.checker] run tellraw @a[tag=bs.debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   bs.id: ","color":"red"},{"score":{"name":"@s","objective":"bs.id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"bs.var0"}},{"text":"   Checker","color":"red"}]
execute if entity @a[tag=bs.debug.entity.id.check] as @e[tag=bs.id.match,tag=!bs.id.checker] run tellraw @a[tag=bs.debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   bs.id: ","color":"red"},{"score":{"name":"@s","objective":"bs.id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"bs.var0"}},{"text":"   Match","color":"red"}]
execute if entity @a[tag=bs.debug.entity.id.check] as @e[tag=bs.id.upper,tag=!bs.id.checker] run tellraw @a[tag=bs.debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   bs.id: ","color":"red"},{"score":{"name":"@s","objective":"bs.id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"bs.var0"}},{"text":"   Upper","color":"red"}]
execute if entity @a[tag=bs.debug.entity.id.check] as @e[tag=bs.id.lower,tag=!bs.id.checker] run tellraw @a[tag=bs.debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   bs.id: ","color":"red"},{"score":{"name":"@s","objective":"bs.id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"bs.var0"}},{"text":"   Lower","color":"red"}]
# End Debug
