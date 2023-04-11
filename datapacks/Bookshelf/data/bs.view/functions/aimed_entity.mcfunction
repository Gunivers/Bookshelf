# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : theogiraudet
# Contributors  : leirof

# Version: 1.1
# Created:??/??/???? (1.13)
# Last verification: 11/04/2023 (1.19.4)
# Last modification: 11/04/2023 (1.19.4)

# Original path : bs.view:aimed_entity
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-entity
# Note          :

# CONFIG ----------------------------------------------------------------------

# bs.in.0 -> Range*10 (10 blocs -> bs.in.0 = 100): Max distance limit for raycast
scoreboard players set @s[tag=!bs.config.override] bs.in.0 100

# CODE ------------------------------------------------------------------------

tag @e remove bs.view.AimedEntity

# Create a new enttiy and assign it to the executing entity
execute at @s run function bs.core:entity/summon
tp @e[tag=bs.new] @s
execute at @s run tp @e[tag=bs.new] ~ ~1.7 ~

# CONFIG: bs.in.0 -> Range*10 (10 blocs -> bs.in.0 = 100)
scoreboard players operation @e[tag=bs.new] bs.in.0 = @s bs.in.0

# Raycast
tag @s add bs.view.Source
execute as @e[tag=bs.new] at @s run function bs.view:aimed_entity/child/raycast
tag @e remove bs.view.Source

execute as @e[tag=bs.new] at @s positioned ~ ~-0.5 ~ run tag @e[tag=!bs.new,distance=..1,sort=nearest,limit=1] add bs.view.AimedEntity

### DEBUG
execute if entity @a[tag=bs.debug.view.aimed_entity] run function bs.view:aimed_entity/debug/1
### END DEBUG

execute as @e[tag=bs.new] run function bs.core:entity/safe_kill
