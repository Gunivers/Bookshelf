# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/10/2023 (1.20.2)
# Last modification: 20/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#spherical-to-cartesian
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #vector.spherical_to_cartesian.scaling bs.data $(scaling)
scoreboard players operation #vector.spherical_to_cartesian.0 bs.data = $vector.spherical_to_cartesian.0 bs.in
scoreboard players operation #vector.spherical_to_cartesian.1 bs.data = $vector.spherical_to_cartesian.1 bs.in
scoreboard players operation #vector.spherical_to_cartesian.0 bs.data *= 100 bs.const
scoreboard players operation #vector.spherical_to_cartesian.1 bs.data *= 100 bs.const
execute as B5-0-0-0-1 run function bs.vector:convert/cartesian_to_spherical/compute
$execute store result score $vector.spherical_to_cartesian.0 bs.out run data get storage bs:ctx _[0] $(scaling)
$execute store result score $vector.spherical_to_cartesian.1 bs.out run data get storage bs:ctx _[1] $(scaling)
$execute store result score $vector.spherical_to_cartesian.2 bs.out run data get storage bs:ctx _[2] $(scaling)

scoreboard players operation $vector.spherical_to_cartesian.0 bs.out *= $vector.spherical_to_cartesian.2 bs.in
scoreboard players operation $vector.spherical_to_cartesian.1 bs.out *= $vector.spherical_to_cartesian.2 bs.in
scoreboard players operation $vector.spherical_to_cartesian.2 bs.out *= $vector.spherical_to_cartesian.2 bs.in
