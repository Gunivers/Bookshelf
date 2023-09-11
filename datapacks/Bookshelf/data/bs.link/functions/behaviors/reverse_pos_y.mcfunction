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

scoreboard players operation @s bs.pos.y -= #link.origin.y bs.data
scoreboard players operation @s bs.pos.y -= @s bs.link.ry
scoreboard players operation @s bs.pos.y += @s bs.pos.y
scoreboard players operation @s bs.link.ry += @s bs.pos.y
execute store result score @s bs.pos.y run scoreboard players operation #link.origin.y bs.data += @s bs.link.ry
