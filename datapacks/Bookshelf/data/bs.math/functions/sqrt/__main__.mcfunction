# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers

# Authors:
# - Ethanout
# - xiaodou123
# Contributors:

# Version: 3.0
# Created: ??/??/2018 (1.13)
# Last modification: 05/08/2023 (1.20.1)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#square-root
# Note: Thanks to the Minecraft Commands' discord server for the help provided for this version 3.0 (https://discord.gg/QAFXFtZ)

# CODE ------------------------------------------------------------------------

execute store result score #math.sqrt.stemp_0 int store result score #math.sqrt.stemp_1 int store result score #math.sqrt.stemp_2 int store result score #math.sqrt.stemp_3 int run scoreboard players operation @s bs.out.0 = @s bs.in.0

execute if score input int matches ..13924 run function bs.math:sqrt/case_1
execute if score input int matches 13925..16777216 run function bs.math:sqrt/case_2
execute if score input int matches 16777217.. run function bs.math:sqrt/case_3

scoreboard players operation #math.sqrt.stemp_0 int /= @s bs.out.0
scoreboard players operation @s bs.out.0 += #math.sqrt.stemp_0 int
scoreboard players operation @s bs.out.0 /= 2 bs.const
scoreboard players operation #math.sqrt.stemp_1 int /= @s bs.out.0
scoreboard players operation @s bs.out.0 += #math.sqrt.stemp_1 int
scoreboard players operation @s bs.out.0 /= 2 bs.const
scoreboard players operation #math.sqrt.stemp_2 int /= @s bs.out.0
scoreboard players operation @s bs.out.0 += #math.sqrt.stemp_2 int
scoreboard players operation @s bs.out.0 /= 2 bs.const
scoreboard players operation #math.sqrt.stemp_3 int /= @s bs.out.0
scoreboard players operation @s bs.out.0 += #math.sqrt.stemp_3 int
scoreboard players operation @s bs.out.0 /= 2 bs.const
