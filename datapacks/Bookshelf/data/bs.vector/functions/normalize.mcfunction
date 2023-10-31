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

execute store result entity B5-0-0-0-1 Pos[0] double 0.00000001 run scoreboard players get $vector.normalize.0 bs.in
execute store result entity B5-0-0-0-1 Pos[1] double 0.00000001 run scoreboard players get $vector.normalize.1 bs.in
execute store result entity B5-0-0-0-1 Pos[2] double 0.00000001 run scoreboard players get $vector.normalize.2 bs.in

execute as B5-0-0-0-1 positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1

$execute store result score $vector.normalize.0 bs.out run data get entity B5-0-0-0-1 Pos[0] $(scale)
$execute store result score $vector.normalize.1 bs.out run data get entity B5-0-0-0-1 Pos[1] $(scale)
$execute store result score $vector.normalize.2 bs.out run data get entity B5-0-0-0-1 Pos[2] $(scale)
