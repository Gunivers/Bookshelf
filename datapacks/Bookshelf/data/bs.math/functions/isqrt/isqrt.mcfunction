# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Ethanout, xiaodou123
# Contributors:

# Version: 3.0
# Created: ??/??/2018 (1.13)
# Last modification: 05/08/2023 (1.20.1)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#square-root
# Dependencies:
# Note: Thanks to the Minecraft Commands' discord server for the help provided for this version 3.0 (https://discord.gg/QAFXFtZ)

# CODE ------------------------------------------------------------------------

execute store result score #math.isqrt.ctx_0 bs.data store result score #math.isqrt.ctx_1 bs.data store result score #math.isqrt.ctx_2 bs.data store result score #math.isqrt.ctx_3 bs.data run scoreboard players operation $math.isqrt bs.out = $math.isqrt.value bs.in

execute if score $math.isqrt.value bs.in matches ..13924 run function bs.math:isqrt/range_1
execute if score $math.isqrt.value bs.in matches 13925..16777216 run function bs.math:isqrt/range_2
execute if score $math.isqrt.value bs.in matches 16777217.. run function bs.math:isqrt/range_3

scoreboard players operation #math.isqrt.ctx_0 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.ctx_0 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.isqrt.ctx_1 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.ctx_1 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.isqrt.ctx_2 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.ctx_2 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.isqrt.ctx_3 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.ctx_3 bs.data
execute store result score #math.isqrt.squared bs.data run scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.isqrt.squared bs.data *= #math.isqrt.squared bs.data

execute if score #math.isqrt.squared bs.data > $math.isqrt.value bs.in run return run scoreboard players remove $math.isqrt bs.out 1
return run scoreboard players get $math.isqrt bs.out
