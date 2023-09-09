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

execute store result score #math.sqrt.stemp_0 bs.data store result score #math.sqrt.stemp_1 bs.data store result score #math.sqrt.stemp_2 bs.data store result score #math.sqrt.stemp_3 bs.data run scoreboard players operation $math.isqrt bs.out = $math.isqrt.value bs.in

execute if score $math.isqrt.value bs.in matches ..13924 run scoreboard players remove $math.isqrt bs.out 1
execute if score $math.isqrt.value bs.in matches ..13924 run scoreboard players operation $math.isqrt bs.out /= 119 bs.const
execute if score $math.isqrt.value bs.in matches ..13924 run scoreboard players add $math.isqrt bs.out 1
execute if score $math.isqrt.value bs.in matches 13925..16777216 run scoreboard players remove $math.isqrt bs.out 13924
execute if score $math.isqrt.value bs.in matches 13925..16777216 run scoreboard players operation $math.isqrt bs.out /= 4214 bs.const
execute if score $math.isqrt.value bs.in matches 13925..16777216 run scoreboard players add $math.isqrt bs.out 118
execute if score $math.isqrt.value bs.in matches 16777217.. run scoreboard players remove $math.isqrt bs.out 16777216
execute if score $math.isqrt.value bs.in matches 16777217.. run scoreboard players operation $math.isqrt bs.out /= 50436 bs.const
execute if score $math.isqrt.value bs.in matches 16777217.. run scoreboard players add $math.isqrt bs.out 4096

scoreboard players operation #math.sqrt.stemp_0 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.sqrt.stemp_0 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.sqrt.stemp_1 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.sqrt.stemp_1 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.sqrt.stemp_2 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.sqrt.stemp_2 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.sqrt.stemp_3 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.sqrt.stemp_3 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const

scoreboard players operation #math.isqrt.temp_1 bs.data *= #math.isqrt.temp_1 bs.data
execute if score #math.isqrt.temp_1 bs.data > $math.isqrt.value bs.in run scoreboard players remove $math.isqrt bs.out 1
