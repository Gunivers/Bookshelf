# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Triton365, Ethanout, xiaodou123
# Contributors:

# Version: 3.1
# Created: ??/??/2018 (1.13)
# Last modification: 26/01/2023 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#square-root
# Dependencies:
# Note: Thanks to the Minecraft Commands' discord server for the help provided (https://discord.gg/QAFXFtZ)

# CODE ------------------------------------------------------------------------

execute store result score #math.isqrt.t1 bs.data store result score #math.isqrt.t2 bs.data store result score #math.isqrt.t3 bs.data store result score #math.isqrt.t4 bs.data run scoreboard players operation $math.isqrt bs.out = $math.isqrt.x bs.in

execute if score $math.isqrt.x bs.in matches 0..1515359 run scoreboard players operation $math.isqrt bs.out /= 559 bs.const
execute if score $math.isqrt.x bs.in matches 0..1515359 run scoreboard players add $math.isqrt bs.out 15
execute if score $math.isqrt.x bs.in matches 1515360.. run scoreboard players operation $math.isqrt bs.out /= 32768 bs.const
execute if score $math.isqrt.x bs.in matches 1515360.. run scoreboard players add $math.isqrt bs.out 2456

scoreboard players operation #math.isqrt.t1 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.t1 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.isqrt.t2 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.t2 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const
scoreboard players operation #math.isqrt.t3 bs.data /= $math.isqrt bs.out
scoreboard players operation $math.isqrt bs.out += #math.isqrt.t3 bs.data
scoreboard players operation $math.isqrt bs.out /= 2 bs.const

scoreboard players operation #math.isqrt.t4 bs.data /= $math.isqrt bs.out
execute if score $math.isqrt bs.out > #math.isqrt.t4 bs.data run scoreboard players remove $math.isqrt bs.out 1
return run scoreboard players get $math.isqrt bs.out
