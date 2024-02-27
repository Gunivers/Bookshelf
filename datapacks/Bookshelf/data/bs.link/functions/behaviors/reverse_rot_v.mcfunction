# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 11/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#reverse-behaviors
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation @s bs.rot.v -= #link.origin.v bs.data
scoreboard players operation @s bs.rot.v -= @s bs.link.lv
scoreboard players operation @s bs.rot.v += @s bs.rot.v
scoreboard players operation @s bs.link.lv += @s bs.rot.v
execute store result score @s bs.rot.v run scoreboard players operation #link.origin.v bs.data += @s bs.link.lv
