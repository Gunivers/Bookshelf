# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 02/09/2023 (23w33a)
# Last modification:

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#float-radix
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score $bitwise.size.value bs.in run data get storage bs:in math.frexp.value
function #bs.bitwise:size

execute if score $bitwise.size bs.out matches 0..7 run function bs.math:frexp/group_1
execute if score $bitwise.size bs.out matches 8..15 run function bs.math:frexp/group_2
execute if score $bitwise.size bs.out matches 16..23 run function bs.math:frexp/group_3
execute if score $bitwise.size bs.out matches 24.. run function bs.math:frexp/group_4

execute store result score #math.frexp.normalize bs.data run data get storage bs:out math.frexp.x 2
execute if score #math.frexp.normalize bs.data matches -1..0 run function bs.math:frexp/normalize
execute store result storage bs:out math.frexp.e int 1 run scoreboard players get $bitwise.size bs.out
