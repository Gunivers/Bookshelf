# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/10/2023 (1.20.2)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#spherical-to-cartesian
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #vector.scaling bs.data $(scaling)
scoreboard players set #vector.dscale bs.data 1000000000
execute store result storage bs:ctx y double .000000001 run scoreboard players operation #vector.dscale bs.data /= #vector.scaling bs.data
execute store result storage bs:ctx x int 1 run scoreboard players get $vector.spherical_to_cartesian.2 bs.in
execute as B5-0-0-0-1 run function bs.vector:convert/spherical_to_cartesian/compute with storage bs:ctx
execute store result score $vector.spherical_to_cartesian.0 bs.out run data get storage bs:ctx _[0]
execute store result score $vector.spherical_to_cartesian.1 bs.out run data get storage bs:ctx _[1]
execute store result score $vector.spherical_to_cartesian.2 bs.out run data get storage bs:ctx _[2]
