# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Ethanout
# Contributors:

# Version: 1.0
# Created: 13/08/2023 (23w31a)
# Last modification: 13/08/2023 (23w31a)

# Documentation: 
# Dependencies:
# Note: the larger bs.in must be smaller than 46342

# CODE ------------------------------------------------------------------------

# C(m,n)

# keep m, n > 0
scoreboard players operation #math.combine.m bs.data = @s bs.in.0
scoreboard players operation #math.combine.m bs.data > 0 bs.const
scoreboard players operation #math.combine.n bs.data = @s bs.in.1
scoreboard players operation #math.combine.n bs.data > 0 bs.const


# keep m <= n
execute if score #math.combine.m bs.data > #math.combine.n bs.data run scoreboard players operation #math.combine.m bs.data >< #math.combine.n bs.data


# get smaller m
scoreboard players operation #math.combine.temp bs.data = #math.combine.n bs.data
scoreboard players operation #math.combine.temp bs.data -= #math.combine.m bs.data
scoreboard players operation #math.combine.m bs.data < #math.combine.temp bs.data


# break if m is special
execute if score #math.combine.m bs.data matches 0 run scoreboard players set @s bs.out.0 1
execute if score #math.combine.m bs.data matches 1 run scoreboard players operation @s bs.out.0 = #math.combine.n bs.data
execute if score #math.combine.m bs.data matches 2.. run function bs.math:combine/start