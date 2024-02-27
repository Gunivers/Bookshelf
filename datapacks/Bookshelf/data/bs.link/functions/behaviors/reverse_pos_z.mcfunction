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

scoreboard players operation @s bs.pos.z -= #link.origin.z bs.data
scoreboard players operation @s bs.pos.z -= @s bs.link.rz
scoreboard players operation @s bs.pos.z += @s bs.pos.z
scoreboard players operation @s bs.link.rz += @s bs.pos.z
execute store result score @s bs.pos.z run scoreboard players operation #link.origin.z bs.data += @s bs.link.rz
