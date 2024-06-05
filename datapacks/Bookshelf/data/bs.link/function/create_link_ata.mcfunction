# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.15)
# Last modification: 11/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#create-link
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

tag @s add bs.link.this
execute as @n[tag=!bs.link.this] unless predicate bs.id:has_suid run function #bs.id:give_suid
scoreboard players operation @s bs.link.to = @n[tag=!bs.link.this] bs.id
tag @s remove bs.link.this
function #bs.link:update_link
