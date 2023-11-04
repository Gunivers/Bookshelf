# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/10/2023 (1.20.2)
# Last modification: 20/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#cartesian-to-spherical
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result entity B5-0-0-0-1 Pos[0] double 0.001 store result storage bs:_ x int 1 run scoreboard players get $vector.cartesian_to_spherical.0 bs.in
execute store result entity B5-0-0-0-1 Pos[1] double 0.001 store result storage bs:_ y int 1 run scoreboard players get $vector.cartesian_to_spherical.1 bs.in
execute store result entity B5-0-0-0-1 Pos[2] double 0.001 store result storage bs:_ z int 1 run scoreboard players get $vector.cartesian_to_spherical.2 bs.in

execute as B5-0-0-0-2 run function bs.position:get_distance_ata/compute with storage bs:_
execute as B5-0-0-0-1 positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~

$execute store result score $vector.cartesian_to_spherical.0 bs.out run data get entity B5-0-0-0-1 Rotation[0] $(scaling)
$execute store result score $vector.cartesian_to_spherical.1 bs.out run data get entity B5-0-0-0-1 Rotation[1] $(scaling)
scoreboard players operation $vector.cartesian_to_spherical.2 bs.out = $position.get_distance_ata bs.out
