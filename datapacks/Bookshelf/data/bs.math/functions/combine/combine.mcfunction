# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Ethanout
# Contributors:

# Version: 1.0
# Created: 13/08/2023 (23w31a)
# Last modification: 13/08/2023 (23w31a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#combine
# Dependencies:
# Note: the larger bs.in must be smaller than 46342

# CODE ------------------------------------------------------------------------

# C(m,n)

# keep m, n > 0
scoreboard players operation #math.combine.m bs.data = $math.combine.m bs.in
scoreboard players operation #math.combine.m bs.data > 0 bs.const
scoreboard players operation #math.combine.n bs.data = $math.combine.n bs.in
scoreboard players operation #math.combine.n bs.data > 0 bs.const

# keep m <= n
execute if score #math.combine.m bs.data > #math.combine.n bs.data run scoreboard players operation #math.combine.m bs.data >< #math.combine.n bs.data

# get smaller m
scoreboard players operation #math.combine.temp bs.data = #math.combine.n bs.data
scoreboard players operation #math.combine.temp bs.data -= #math.combine.m bs.data
scoreboard players operation #math.combine.m bs.data < #math.combine.temp bs.data

# break if m is special
execute if score #math.combine.m bs.data matches 0 run scoreboard players set $math.combine bs.out 1
execute if score #math.combine.m bs.data matches 1 run scoreboard players operation $math.combine bs.out = #math.combine.n bs.data
execute if score #math.combine.m bs.data matches 2.. run function bs.math:combine/start
