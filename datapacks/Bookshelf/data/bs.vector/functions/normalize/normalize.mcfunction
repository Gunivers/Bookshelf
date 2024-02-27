# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: 19/02/2023 (1.19.2)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#normalize
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute as B5-0-0-0-1 run function bs.vector:normalize/compute
$execute store result score $vector.normalize.0 bs.out run data get storage bs:ctx _[0] $(scale)
$execute store result score $vector.normalize.1 bs.out run data get storage bs:ctx _[1] $(scale)
$execute store result score $vector.normalize.2 bs.out run data get storage bs:ctx _[2] $(scale)
