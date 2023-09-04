# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 01/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#exponential
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #math.exp.index bs.data store result score #math.exp.fract bs.data run data get storage bs:in math.exp.value 10000000

# Seperate integral and fractional parts
scoreboard players operation #math.exp.index bs.data /= 10000000 bs.const
execute store result storage bs:data math.exp.fract double 0.0000001 run scoreboard players operation #math.exp.fract bs.data %= 10000000 bs.const
execute store result storage bs:data math.exp.index int 1 run scoreboard players add #math.exp.index bs.data 6

# Get integral result from lookup table
function bs.math:exp/table with storage bs:data math.exp

# Adjust result using the fractional part
execute if score #math.exp.fract bs.data matches 1.. run function bs.math:exp/fract
