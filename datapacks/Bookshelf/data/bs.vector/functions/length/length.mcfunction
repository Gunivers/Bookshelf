# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: ??/??/???? (1.13)
# Last modification: 20/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#length
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result storage bs:ctx x int 1 run scoreboard players get $vector.length.0 bs.in
execute store result storage bs:ctx y int 1 run scoreboard players get $vector.length.1 bs.in
execute store result storage bs:ctx z int 1 run scoreboard players get $vector.length.2 bs.in

execute store result score $vector.length bs.out as B5-0-0-0-2 run return run function bs.vector:length/compute with storage bs:ctx
