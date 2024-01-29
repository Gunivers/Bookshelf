# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.3
# Created: 02/09/2023 (23w33a)
# Last modification: 28/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#float-radix
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #result bs.data run data get storage bs:ctx x
execute unless score #result bs.data matches 0 run function bs.math:frexp/e_pos_split
execute unless score #result bs.data matches 0 run function bs.math:frexp/e_pos_chunk
execute if score #result bs.data matches 0 run function bs.math:frexp/e_neg

execute store result storage bs:out math.frexp.e int 1 run scoreboard players get #math.frexp.e bs.data
data modify storage bs:out math.frexp.x set from storage bs:ctx x
