# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 20/10/2023 (1.20.2)
# Last modification: 20/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#cartesian-to-spherical
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result entity B5-0-0-0-1 Pos[0] double 0.001 store result storage bs:ctx x int 1 run scoreboard players get $vector.cartesian_to_spherical.0 bs.in
execute store result entity B5-0-0-0-1 Pos[1] double 0.001 store result storage bs:ctx y int 1 run scoreboard players get $vector.cartesian_to_spherical.1 bs.in
execute store result entity B5-0-0-0-1 Pos[2] double 0.001 store result storage bs:ctx z int 1 run scoreboard players get $vector.cartesian_to_spherical.2 bs.in

execute as B5-0-0-0-1 positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
$execute store result score $vector.cartesian_to_spherical.0 bs.out run data get entity B5-0-0-0-1 Rotation[0] $(scaling)
$execute store result score $vector.cartesian_to_spherical.1 bs.out run data get entity B5-0-0-0-1 Rotation[1] $(scaling)
execute store result score $vector.cartesian_to_spherical.2 bs.out as B5-0-0-0-2 run function bs.vector:length/compute with storage bs:ctx
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600
