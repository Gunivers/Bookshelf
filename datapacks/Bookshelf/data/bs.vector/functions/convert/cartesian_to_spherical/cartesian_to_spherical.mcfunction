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

execute as B5-0-0-0-1 run function bs.vector:convert/cartesian_to_spherical/compute
$execute store result score $vector.cartesian_to_spherical.0 bs.out run data get entity B5-0-0-0-1 Rotation[0] $(scaling)
$execute store result score $vector.cartesian_to_spherical.1 bs.out run data get entity B5-0-0-0-1 Rotation[1] $(scaling)
execute store result score $vector.cartesian_to_spherical.2 bs.out as B5-0-0-0-2 run function bs.vector:length/compute with storage bs:ctx
