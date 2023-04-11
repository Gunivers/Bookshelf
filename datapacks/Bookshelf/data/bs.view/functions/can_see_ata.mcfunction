# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.13)
# Last verification: 11/04/2023 (1.19.4)
# Last modification: 11/04/2023 (1.19.4)

# Original path : bs.view:can_see_ata
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#can-see-as-to-at
# Note          :

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

#bs.in.0 -> Range*10 (1 blocs -> bs.in.0 = 10)
scoreboard players set @s[tag=!bs.config.override] bs.in.0 200

# CODE ------------------------------------------------------------------------

tag @s remove bs.view.CanSee

# Source position
execute at @s positioned ~ ~1.7 ~ run function bs.core:entity/summon
tag @e[tag=bs.new] add bs.view.CanSee.Source
tag @e[tag=bs.new] add bs.view.CanSee.tmp
tag @e[tag=bs.new] remove bs.new

# Target position
function bs.core:entity/summon
tag @e[tag=bs.new] add bs.view.CanSee.Target
tag @e[tag=bs.new] add bs.view.CanSee.tmp
tag @e[tag=bs.new] remove bs.new

# Raycast
execute as @e[tag=bs.view.CanSee.Source] positioned as @s anchored eyes facing entity @e[tag=bs.view.CanSee.Target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[tag=bs.view.CanSee.Source] bs.in.0 = @s bs.in.0
execute as @e[tag=bs.view.CanSee.Source] at @s run function bs.view:can_see/child/loop

execute at @e[tag=bs.view.CanSee.Source] if entity @e[tag=bs.view.CanSee.Target,distance=..0.1] run tag @s add bs.view.CanSee

### DEBUG
execute if entity @a[tag=bs.debug.view.can_see_ata] run function bs.view:can_see/debug/1
### END DEBUG

kill @e[tag=bs.view.CanSee.tmp]
