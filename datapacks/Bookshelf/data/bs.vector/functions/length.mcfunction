# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 17/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#length
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $vector.length bs.out = $vector.length.0 bs.in
scoreboard players operation $vector.length bs.out *= $vector.length.0 bs.in
scoreboard players operation #vector.length bs.data = $vector.length.1 bs.in
scoreboard players operation #vector.length bs.data *= $vector.length.1 bs.in
scoreboard players operation $vector.length bs.out += #vector.length bs.data
scoreboard players operation #vector.length bs.data = $vector.length.2 bs.in
scoreboard players operation #vector.length bs.data *= $vector.length.2 bs.in
execute store result score #vector.length.tmp0 bs.data store result score #vector.length.tmp1 bs.data store result score #vector.length.tmp2 bs.data store result score #vector.length.tmp3 bs.data run scoreboard players operation $vector.length bs.out += #vector.length bs.data

execute if score #vector.length.tmp0 bs.data matches ..13924 run scoreboard players remove $vector.length bs.out 1
execute if score #vector.length.tmp0 bs.data matches ..13924 run scoreboard players operation $vector.length bs.out /= 119 bs.const
execute if score #vector.length.tmp0 bs.data matches ..13924 run scoreboard players add $vector.length bs.out 1
execute if score #vector.length.tmp0 bs.data matches 13925..16777216 run scoreboard players remove $vector.length bs.out 13924
execute if score #vector.length.tmp0 bs.data matches 13925..16777216 run scoreboard players operation $vector.length bs.out /= 4214 bs.const
execute if score #vector.length.tmp0 bs.data matches 13925..16777216 run scoreboard players add $vector.length bs.out 118
execute if score #vector.length.tmp0 bs.data matches 16777217.. run scoreboard players remove $vector.length bs.out 16777216
execute if score #vector.length.tmp0 bs.data matches 16777217.. run scoreboard players operation $vector.length bs.out /= 50436 bs.const
execute if score #vector.length.tmp0 bs.data matches 16777217.. run scoreboard players add $vector.length bs.out 4096

scoreboard players operation #vector.length.tmp0 bs.data /= $vector.length bs.out
scoreboard players operation $vector.length bs.out += #vector.length.tmp0 bs.data
scoreboard players operation $vector.length bs.out /= 2 bs.const
scoreboard players operation #vector.length.tmp1 bs.data /= $vector.length bs.out
scoreboard players operation $vector.length bs.out += #vector.length.tmp1 bs.data
scoreboard players operation $vector.length bs.out /= 2 bs.const
scoreboard players operation #vector.length.tmp2 bs.data /= $vector.length bs.out
scoreboard players operation $vector.length bs.out += #vector.length.tmp2 bs.data
scoreboard players operation $vector.length bs.out /= 2 bs.const
scoreboard players operation #vector.length.tmp3 bs.data /= $vector.length bs.out
scoreboard players operation $vector.length bs.out += #vector.length.tmp3 bs.data
scoreboard players operation $vector.length bs.out /= 2 bs.const
