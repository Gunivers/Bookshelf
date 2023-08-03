# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0
# Created: 19/02/2023 (1.19.2)
# Last verification: 21/05/2023 (1.19.4)
# Last modification: 21/05/2023 (1.19.4)

# Original path : bs.vecotr:fast_normalize
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/vector#normalize
# Note          :

# CODE ------------------------------------------------------------------------

# Lenght after normalization
execute unless score @s bs.opt.0 matches 1.. run scoreboard players set @s bs.opt.0 1000

# Getting absolute value of each component
scoreboard players operation #vector.fast_normalize.x bs.data = @s bs.vector.x
scoreboard players operation #vector.fast_normalize.y bs.data = @s bs.vector.y
scoreboard players operation #vector.fast_normalize.z bs.data = @s bs.vector.z

execute if score #vector.fast_normalize.x bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.x bs.data *= -1 bs.const
execute if score #vector.fast_normalize.y bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.y bs.data *= -1 bs.const
execute if score #vector.fast_normalize.z bs.data matches ..-1 run scoreboard players operation #vector.fast_normalize.z bs.data *= -1 bs.const

# Getting the maximum component of the vector
scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.x bs.data
execute if score #vector.fast_normalize.y bs.data > #vector.fast_normalize.max bs.data run scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.y bs.data
execute if score #vector.fast_normalize.z bs.data > #vector.fast_normalize.max bs.data run scoreboard players operation #vector.fast_normalize.max bs.data = #vector.fast_normalize.z bs.data

# Multiplying the vector by the final length
scoreboard players operation @s bs.vector.x *= @s bs.opt.0
scoreboard players operation @s bs.vector.y *= @s bs.opt.0
scoreboard players operation @s bs.vector.z *= @s bs.opt.0

# Dividing the vector by the maximum component
scoreboard players operation @s bs.vector.x /= #vector.fast_normalize.max bs.data
scoreboard players operation @s bs.vector.y /= #vector.fast_normalize.max bs.data
scoreboard players operation @s bs.vector.z /= #vector.fast_normalize.max bs.data

# Computing normalization factor (with 3 decimals)
# Vi = A * Vn  ==> A = Vi / Vn
scoreboard players operation @s bs.out.0 = #vector.fast_normalize.max bs.data
scoreboard players operation @s bs.out.0 *= 1000 bs.const
scoreboard players operation @s bs.out.0 /= @s bs.opt.0

# Reset option score
scoreboard players reset @s bs.opt.0