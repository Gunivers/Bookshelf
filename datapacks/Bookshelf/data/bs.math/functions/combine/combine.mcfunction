# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Ethanout
# Contributors:

# Version: 1.0
# Created: 13/08/2023 (23w31a)
# Last modification: 13/08/2023 (23w31a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#combine
# Dependencies:
# Note: the larger bs.in must be smaller than 46342

# CODE ------------------------------------------------------------------------

# C(n,k)

# keep n, k > 0
scoreboard players operation #math.combine.n bs.data = $math.combine.n bs.in
scoreboard players operation #math.combine.n bs.data > 0 bs.const
scoreboard players operation #math.combine.k bs.data = $math.combine.k bs.in
scoreboard players operation #math.combine.k bs.data > 0 bs.const

# keep n <= k
execute if score #math.combine.n bs.data > #math.combine.k bs.data run scoreboard players operation #math.combine.n bs.data >< #math.combine.k bs.data

# get smaller n
scoreboard players operation #math.combine.temp bs.data = #math.combine.k bs.data
scoreboard players operation #math.combine.temp bs.data -= #math.combine.n bs.data
scoreboard players operation #math.combine.n bs.data < #math.combine.temp bs.data

# break if n is special
execute if score #math.combine.n bs.data matches 0 run scoreboard players set $math.combine bs.out 1
execute if score #math.combine.n bs.data matches 1 run scoreboard players operation $math.combine bs.out = #math.combine.k bs.data
execute if score #math.combine.n bs.data matches 2.. run function bs.math:combine/recurse/init

return run scoreboard players get $math.combine bs.out
