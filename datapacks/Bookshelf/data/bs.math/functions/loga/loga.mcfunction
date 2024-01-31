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

data modify storage bs:ctx x set from storage bs:in math.loga.a
function bs.math:log2/run

scoreboard players set #math.loga.a bs.data 2000000000
execute store result score #math.loga.b bs.data run data get storage bs:ctx x 20000
execute store result storage bs:ctx y double 1 run scoreboard players operation #math.loga.a bs.data /= #math.loga.b bs.data

data modify storage bs:ctx x set from storage bs:in math.loga.x
function bs.math:log2/run
function bs.math:loga/mul with storage bs:ctx
