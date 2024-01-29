# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.1
# Created: ??/??/2018 (1.13)
# Last modification: 29/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#exponential
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# split integral (y) and fractional (x) parts
execute store result score #math.exp.index bs.data store result score #math.exp.x bs.data run data get storage bs:in math.exp.value 10000000
scoreboard players operation #math.exp.index bs.data /= 10000000 bs.const
execute store result storage bs:ctx x float 0.0000001 run scoreboard players operation #math.exp.x bs.data %= 10000000 bs.const
execute store result storage bs:ctx y int 1 run scoreboard players add #math.exp.index bs.data 20

# compute exp(y) scaled by 0.0000001 and exp(x) scaled by 10000000
execute if score #math.exp.index bs.data matches ..-1 run data modify storage bs:out math.exp set value 0.0
execute if score #math.exp.index bs.data matches 0.. run function bs.math:exp/table with storage bs:ctx
execute unless score #math.exp.x bs.data matches 0 run function bs.math:exp/fract with storage bs:ctx
execute if score #math.exp.x bs.data matches 0 run scoreboard players set #math.exp.x bs.data 10000000

# multiply the fractional part by the integral one
function bs.math:exp/rescale with storage bs:out math
