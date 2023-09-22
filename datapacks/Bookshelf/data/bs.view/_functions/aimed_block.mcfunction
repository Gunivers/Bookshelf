# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : Syl2010

# Version: 1.1
# Created: ??/??/???? (1.13)
# Last verification: 11/04/2023 (1.19.4)
# Last modification: 11/04/2023 (1.19.4)

# Original path : bs.view:aimed_block
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-block
# Note          : Summon a new entity in the block targeted by executing entity. The new entity retrieves the ID of the executing entity in the scoreboard bs.id.parent and get the tag bs.aimedBlock.new.

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# bs.in.0 -> Range*10 (10 blocs -> bs.in.0 = 100): Max distance limit for raycast
scoreboard players set @s[tag=!bs.config.override] bs.in.0 100

# CODE ------------------------------------------------------------------------

# Remove old aimedBlock entites
execute if entity @s[scores={bs.id=0..}] run scoreboard players operation @s bs.id.target = @s bs.id
execute if entity @s[scores={bs.id=0..}] run function bs.id:check_parent
execute if entity @s[scores={bs.id=0..}] run execute as @e[tag=bs.view.AimedBlock,tag=bs.id.parent.match] run function bs.core:entity/safe_kill
execute unless entity @s[scores={bs.id=0..}] run execute as @e[tag=bs.view.AimedBlock] run function bs.core:entity/safe_kill

# Create a new enttiy and assign it to the executing entity
execute at @s run function bs.core:entity/summon
tag @e[tag=bs.new] add bs.view.AimedBlock
scoreboard players operation @e[tag=bs.new] bs.id.parent = @s bs.id
tp @e[tag=bs.new] @s
execute at @s run tp @e[tag=bs.new] ~ ~1.7 ~

# CONFIG: bs.in.0 -> Range*10 (10 blocks -> bs.in.0 = 100)
scoreboard players operation @e[tag=bs.new] bs.in.0 = @s bs.in.0

# Place entity on the first block in the raycast
execute as @e[tag=bs.new] at @s run function bs.view:aimed_block/child/raycast
execute as @e[tag=bs.new] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5

### DEBUG
execute if entity @a[tag=bs.debug.view.aimed_block] run function bs.view:aimed_block/debug/1
### END DEBUG

tag @e remove bs.new