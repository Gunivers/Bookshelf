# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.1
# Created: ??/??/2018 (1.13)
# Last modification: 29/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#logarithm
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# decompose x into a normalized fraction and an integral power of two [log2(x) = log2(frexp.x) + frexp.e]
function bs.math:frexp/frexp
function bs.math:log2/fract with storage bs:out math.frexp
execute store result score #result bs.data run data get storage bs:out math.frexp.e 10000000
execute store result storage bs:out math.log2 float 0.0000001 run scoreboard players operation #math.log2 bs.data += #result bs.data
