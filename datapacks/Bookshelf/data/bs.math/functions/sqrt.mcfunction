# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Ethanout
# Contributors:

# Version: 1.1
# Created: 28/08/2023 (23w31a)
# Last modification: 28/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#square-root
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:ctx x set from storage bs:in math.sqrt.value
function bs.math:frexp/frexp

# secant approximation (x / 79249 + 19750 => 2 iters)
execute store result score #math.sqrt.x bs.data store result score #math.sqrt.y bs.data store result score #math.sqrt.t1 bs.data store result score #math.sqrt.t2 bs.data run data get storage bs:out math.frexp.x 1073741824
scoreboard players operation #math.sqrt.x bs.data /= 79249 bs.const
scoreboard players add #math.sqrt.x bs.data 19750
scoreboard players operation #math.sqrt.t1 bs.data /= #math.sqrt.x bs.data
scoreboard players operation #math.sqrt.x bs.data += #math.sqrt.t1 bs.data
scoreboard players operation #math.sqrt.x bs.data /= 2 bs.const
scoreboard players operation #math.sqrt.t2 bs.data /= #math.sqrt.x bs.data
scoreboard players operation #math.sqrt.x bs.data += #math.sqrt.t2 bs.data
execute store result score #math.sqrt.t1 bs.data store result score #math.sqrt.t2 bs.data run scoreboard players operation #math.sqrt.x bs.data /= 2 bs.const

# secant approximation (x - isqrt(x)^2) / (isqrt(x) * 2 + 1)
scoreboard players operation #math.sqrt.t1 bs.data *= 2 bs.const
scoreboard players add #math.sqrt.t1 bs.data 1
scoreboard players operation #math.sqrt.t2 bs.data *= #math.sqrt.t2 bs.data
scoreboard players operation #math.sqrt.y bs.data -= #math.sqrt.t2 bs.data
scoreboard players operation #math.sqrt.y bs.data *= 32768 bs.const
scoreboard players operation #math.sqrt.y bs.data /= #math.sqrt.t1 bs.data
scoreboard players operation #math.sqrt.x bs.data *= 32768 bs.const

execute store result score #math.ldexp.e bs.data store result score #math.sqrt.t1 bs.data run data get storage bs:out math.frexp.e
scoreboard players operation #math.sqrt.t1 bs.data %= 2 bs.const
scoreboard players operation #math.ldexp.e bs.data += #math.sqrt.t1 bs.data
scoreboard players operation #math.ldexp.e bs.data /= 2 bs.const
execute if score #math.sqrt.t1 bs.data matches 0 store result storage bs:ctx x float .000000000931322574615478515625 run scoreboard players operation #math.sqrt.x bs.data += #math.sqrt.y bs.data
execute if score #math.sqrt.t1 bs.data matches 1 store result storage bs:ctx x float .00000000065854450798271929168823261686546190196711592079736874438822269439697265625 run scoreboard players operation #math.sqrt.x bs.data += #math.sqrt.y bs.data
function bs.math:ldexp/ldexp
data modify storage bs:out math.sqrt set from storage bs:out math.ldexp
