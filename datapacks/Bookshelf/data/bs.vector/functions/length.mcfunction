# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 3.0
# Created: ??/??/???? (1.13)
# Last modification: 20/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#length
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify entity B5-0-0-0-2 transformation set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute store result entity B5-0-0-0-2 transformation[0] float 1 run scoreboard players get $vector.length.0 bs.in
execute store result entity B5-0-0-0-2 transformation[4] float 1 run scoreboard players get $vector.length.1 bs.in
execute store result entity B5-0-0-0-2 transformation[8] float 1 run scoreboard players get $vector.length.2 bs.in

execute store result score $vector.length bs.out run return run data get entity B5-0-0-0-2 transformation.scale[0]
