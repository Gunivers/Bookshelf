# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 19/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#time-to-live
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(with)

execute if data storage bs:ctx _.on_death run function bs.health:time_to_live/register_callback with entity @s
execute if data storage bs:ctx _.unit run function bs.health:time_to_live/register_unit with storage bs:ctx _
execute if data storage bs:ctx _.time store result score @s bs.ttl run data get storage bs:ctx _.time
schedule function bs.health:time_to_live/next_tick 1t
