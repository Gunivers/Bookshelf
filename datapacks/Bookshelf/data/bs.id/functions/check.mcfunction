#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: bs.id:check
# Documentation: https://bs-core.readthedocs.io//entity#id
# Parallelizable: global
# Note:

#__________________________________________________
# PARAMETERS

# Input: id.target bs.in.0 (score)
# Input: @e bs.id (score)
# Output: @e bs.id.match (tag): On every entities that have the same bs.id as @s bs.id.target
# Output: @e bs.id.upper (tag): On every entities that have an bs.id socre upper than @s bs.id.target
# Output: @e bs.id.upper (tag): On every entities that have an bs.id socre lower than @s bs.id.target
# Output: @s bs.id.checker (tag) : if executed on an entity

#__________________________________________________
# INIT

scoreboard objectives add bs.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"ID","color":"aqua"}]
scoreboard objectives add bs.id.target dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Target ID","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=bs.id.match] remove bs.id.match
tag @e[tag=bs.id.upper] remove bs.id.upper
tag @e[tag=bs.id.lower] remove bs.id.lower

# To deprecate
tag @e[tag=bs.id.checker] remove bs.id.checker

scoreboard players operation @e bs.id -= @s bs.id.target
tag @e[scores={bs.id=0}] add bs.id.match
tag @e[scores={bs.id=..-1}] add bs.id.lower
tag @e[scores={bs.id=-1..}] add bs.id.upper
scoreboard players operation @e bs.id += @s bs.id.target

# To deprecate
tag @s add bs.id.checker

# Start Debug
tellraw @a[tag=bs.debug.id.check] ["",{"text":"> DEBUG | ","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.id.check"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"bs.id:check","color":"green"}]
execute as @e[tag=bs.id.checker] run tellraw @a[tag=bs.debug.id.check] ["",{"text":"   TARGET: ","color":"gray"},{"score":{"name":"@s","objective":"bs.id.target"}}]
execute as @e[tag=bs.id.checker] run tellraw @a[tag=bs.debug.id.check] ["",{"text":"   ENTITY: ","color":"gray"},{"text":"Name: ","color":"dark_aqua"},{"selector":"@s"},{"text":"   bs.id: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"bs.id"}},{"text":"   Result: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"bs.in.0"}},{"text":"   Checker","color":"dark_aqua"}]
execute as @e[tag=bs.id.match] run tellraw @a[tag=bs.debug.id.check] ["",{"text":"   ENTITY: ","color":"gray"},{"text":"Name: ","color":"dark_aqua"},{"selector":"@s"},{"text":"   bs.id: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"bs.id"}},{"text":"   Result: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"bs.in.0"}},{"text":"   Match","color":"dark_aqua"}]
execute as @e[tag=bs.id.upper] run tellraw @a[tag=bs.debug.id.check] ["",{"text":"   ENTITY: ","color":"gray"},{"text":"Name: ","color":"dark_aqua"},{"selector":"@s"},{"text":"   bs.id: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"bs.id"}},{"text":"   Result: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"bs.in.0"}},{"text":"   Upper","color":"dark_aqua"}]
execute as @e[tag=bs.id.lower] run tellraw @a[tag=bs.debug.id.check] ["",{"text":"   ENTITY: ","color":"gray"},{"text":"Name: ","color":"dark_aqua"},{"selector":"@s"},{"text":"   bs.id: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"bs.id"}},{"text":"   Result: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"bs.in.0"}},{"text":"   Lower","color":"dark_aqua"}]
tellraw @a[tag=bs.debug.id.check] ["",{"text":"< DEBUG | ","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.id.check"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"bs.id:check","color":"green"}]
# End Debug
