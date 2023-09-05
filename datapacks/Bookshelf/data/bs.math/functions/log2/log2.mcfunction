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

# Decompose x into a normalized fraction and an integral power of two.
data modify storage bs:in math.frexp.value set from storage bs:in math.log2.value
function #bs.math:frexp
execute store result score #math.log2.e bs.data run data get storage bs:out math.frexp.e 10000000

# Use a 5-part polynomial to approximate log2(x) in range [0.5,1]
# -3.42431640625 + x * (7.6412353515625 + x * (-7.4527587890625 + x * (4.2366943359375 + x * (-1.0008544921875))))
execute store result storage bs:data math.log2.square float 1 run data get storage bs:out math.frexp.x -100085449.21875
function bs.math:log2/square with storage bs:out math.frexp
function bs.math:log2/square with storage bs:out math.frexp
function bs.math:log2/square with storage bs:out math.frexp
execute store result score #math.log2.x4 bs.data run data get storage bs:data math.log2.square

execute store result storage bs:data math.log2.square float 1 run data get storage bs:out math.frexp.x 423669433.59375
function bs.math:log2/square with storage bs:out math.frexp
function bs.math:log2/square with storage bs:out math.frexp
execute store result score #math.log2.x3 bs.data run data get storage bs:data math.log2.square

execute store result storage bs:data math.log2.square float 1 run data get storage bs:out math.frexp.x -745275878.90625
function bs.math:log2/square with storage bs:out math.frexp
execute store result score #math.log2.x2 bs.data run data get storage bs:data math.log2.square

execute store result score #math.log2.x bs.data run data get storage bs:out math.frexp.x 764123535.15625

scoreboard players operation #math.log2.x bs.data += #math.log2.x2 bs.data
scoreboard players operation #math.log2.x bs.data += #math.log2.x3 bs.data
scoreboard players operation #math.log2.x bs.data += #math.log2.x4 bs.data
scoreboard players remove #math.log2.x bs.data 342431640
scoreboard players operation #math.log2.x bs.data /= 10 bs.const

# Compute log2(x) = frexp.e + log2(frexp.x)
execute store result storage bs:out math.log2 double 0.0000001 run scoreboard players operation #math.log2.e bs.data += #math.log2.x bs.data
