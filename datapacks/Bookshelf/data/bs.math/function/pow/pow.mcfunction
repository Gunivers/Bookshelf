# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 30/01/2024 (1.20.4)
# Last modification: 30/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#pow
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# pow(x,y) = exp2(y * log2(x))
data modify storage bs:ctx x set from storage bs:in math.pow.x
data modify storage bs:ctx y set from storage bs:in math.pow.y

function bs.math:frexp/run
function bs.math:log2/fract with storage bs:ctx
scoreboard players operation #math.frexp.e bs.data *= 16777216 bs.const
function bs.math:pow/mul with storage bs:ctx

execute store result score #math.ldexp.e bs.data store result score #math.exp2.x bs.data run data get storage bs:ctx x
function bs.math:exp2/run
data modify storage bs:out math.pow set from storage bs:ctx x
