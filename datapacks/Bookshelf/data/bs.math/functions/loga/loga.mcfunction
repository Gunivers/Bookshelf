# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 02/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#logarithm
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:in math.log2.value set from storage bs:in math.loga.a
function #bs.math:log2
scoreboard players set #math.loga.a bs.data 2000000000
execute store result score #math.loga.b bs.data run data get storage bs:out math.log2 20000
execute store result storage bs:data math.loga.a double 1 run scoreboard players operation #math.loga.a bs.data /= #math.loga.b bs.data
data modify storage bs:data math.loga.a set string storage bs:data math.loga.a 0 -1

data modify storage bs:in math.log2.value set from storage bs:in math.loga.value
function #bs.math:log2
data modify storage bs:out math.loga set from storage bs:out math.log2
function bs.math:loga/convert with storage bs:data math.loga
