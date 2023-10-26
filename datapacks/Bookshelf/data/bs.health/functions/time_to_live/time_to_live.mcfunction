# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 15/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#time-to-live
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:_ health set value $(with)

execute if data storage bs:_ health.on_death run function bs.health:time_to_live/register_callback with entity @s
execute if data storage bs:_ health.unit run function bs.health:time_to_live/register_unit with storage bs:_ health
execute if data storage bs:_ health.time store result score @s bs.ttl run data get storage bs:_ health.time
data remove storage bs:_ health
