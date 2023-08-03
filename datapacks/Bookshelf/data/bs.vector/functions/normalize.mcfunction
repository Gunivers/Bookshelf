# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0
# Created: 19/02/2023 (1.19.2)
# Last verification: 03/08/2023 (1.20.1)
# Last modification: 03/08/2023 (1.20.1)

# Original path : bs.vecotr:fast_normalize
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#normalize
# Note          :

# CODE ------------------------------------------------------------------------

# Norm after normalization
execute unless score @s bs.opt.0 matches 1.. run scoreboard players set @s bs.opt.0 1000
### bs.opt.0 := ||Vn||

scoreboard players operation #vector.backup.out.0 bs.data = @s bs.out.0

# Computing norm of Vi
function bs.vector:length
### bs.out.0 := ||Vi||

# Computing Vi' = Vi * ||Vn||
scoreboard players operation @s bs.vector.x *= @s bs.opt.0
scoreboard players operation @s bs.vector.y *= @s bs.opt.0
scoreboard players operation @s bs.vector.z *= @s bs.opt.0

# Dividing Vn = Vi' / ||Vi||
scoreboard players operation @s bs.vector.x /= @s bs.out.0
scoreboard players operation @s bs.vector.y /= @s bs.out.0
scoreboard players operation @s bs.vector.z /= @s bs.out.0

# Computing normalization factor A
scoreboard players operation @s bs.out.0 *= 1000 bs.const
scoreboard players operation @s bs.out.0 /= @s bs.opt.0
### Vi = A * Vn   ==>   A = Vi / Vn

# Reseting option score to avoid border effects
scoreboard players reset @s bs.opt.0

# EXPLAINATIONS ---------------------------------------------------------------

# Vi := Initial vector
# Vn := Normalized vector
# A  := Normalization factor

# Usually, a normalization consist to bring the norm to 1.
# Here, by default it's 1 (shifted by 3 decimals so 1000 in practice), but the function allow the user to choose the norm of the normalized vector.