# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 11/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#reverse-behaviors
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation @s bs.rot.h -= #link.origin.h bs.data
scoreboard players operation @s bs.rot.h -= @s bs.link.lh
scoreboard players operation @s bs.rot.h += @s bs.rot.h
scoreboard players operation @s bs.link.lh += @s bs.rot.h
execute store result score @s bs.rot.h run scoreboard players operation #link.origin.h bs.data += @s bs.link.lh
