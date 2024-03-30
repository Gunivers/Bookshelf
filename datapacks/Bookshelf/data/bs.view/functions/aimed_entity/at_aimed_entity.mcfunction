# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 30/11/2023 (1.20.3)
# Last modification: 30/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-entity
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# run the raycast at the entity eyes
execute at @s anchored eyes positioned ^ ^ ^ run function bs.raycast:runner/run

# run the command at the entity that was found or return early
execute unless data storage bs:out raycast.targeted_entity run return fail
data modify entity B5-0-0-0-4 Owner set from storage bs:out raycast.targeted_entity
tag @s add bs.view.this
$execute as B5-0-0-0-4 on origin at @s as @e[tag=bs.view.this,sort=arbitrary,limit=1] run $(run)
tag @s remove bs.view.this
