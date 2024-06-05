# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 11/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#keep-local-position
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result storage bs:ctx x double 0.001 run scoreboard players get @s bs.link.lx
execute store result storage bs:ctx y double 0.001 run scoreboard players get @s bs.link.ly
execute store result storage bs:ctx z double 0.001 run scoreboard players get @s bs.link.lz

scoreboard players operation $id.suid bs.in = @s bs.link.to
execute at @n[predicate=bs.id:suid_equal,sort=arbitrary] run function bs.link:keep_local_pos/apply with storage bs:ctx
