# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 11/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#imitate-behaviors
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score @s bs.pos.x run scoreboard players operation #link.origin.x bs.data += @s bs.link.rx
