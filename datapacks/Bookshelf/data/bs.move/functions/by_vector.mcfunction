#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.move:by_vector
# Parallelizable: true
# Note:

# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 2.2
# Created: ??/??/???? (1.13)
# Last verification: 14/04/2023 (1.19.4)
# Last modification: 14/04/2023 (1.19.4)

# Original path : bs.move:by_vector
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/move.html#move-using-vector
# Note          :

# This function will decompose the input vector in a sum of vectors with max component equal to the desired precision (by default, 1 block).
# The vector is a set of 3 scores : bs.vector.x, bs.vector.y, bs.vector.y that define the displacement of the entity
# 
# The function then use : Vi = A * Vn + Vr
# With
# Vi : the input vector
# Vn : The input vector normalize such as it's maximum component is equal to the precision
# A  : The number of times Vn need to be stacked to get near Vi (A*Vn ~= Vi)
# Vr : the "rest" vector, that allow to perfectly match Vi
#
# Once the vector is decomposed, the system loop from 1 to A to apply the movement corresponding to the Vn vector, and then apply once the Vr movement.
# To apply this vector, the system use a dichotomic function.
# Basically, it consist of teleporting the entity to +0.512 on the X axis if the X component of it's vector is > 512
# If it's the case, then it remove 512 from the X component. Then repeast the operation with 256 (= 512/2) ... then with 128 (256/2)
# At the end, the entity will be moved on the X axis by exactly the same distance indicated by the vector component
#
# At the end of each loop, it call the collision dispatcher function, that manage the collision according to the bs.move.collision score.
# If the bs.move.collision score is negative, it will use the built-in collision system (demo and general purposes)
# If the score is positive, it will use the user defined collision, calling the dispatcher at bs.config:move/by_vector/collision/__dispatcher__


# CODE ------------------------------------------------------------------------

### DEBUG
tellraw @a [{"text":"Move - X: "},{"score":{"name":"@s","objective":"bs.vector.x"}},{"text":" Y: "},{"score":{"name":"@s","objective":"bs.vector.y"}},{"text":" Z: "},{"score":{"name":"@s","objective":"bs.vector.z"}},{"text":" C: "},{"score":{"name":"@s","objective":"bs.move.collision"}},{"text":" P: "},{"score":{"name":"@s","objective":"bs.opt.0"}}]

# Data backup
scoreboard players operation #Vi.x bs.data = @s bs.vector.x
scoreboard players operation #Vi.y bs.data = @s bs.vector.y
scoreboard players operation #Vi.z bs.data = @s bs.vector.z
scoreboard players operation #move.by_vector.out.0 bs.data = @s bs.out.0
scoreboard players operation #move.by_vector.loc.rx bs.data = @s bs.loc.rx
scoreboard players operation #move.by_vector.loc.ry bs.data = @s bs.loc.ry
scoreboard players operation #move.by_vector.loc.rz bs.data = @s bs.loc.rz

# Remove old collision tags
tag @s remove bs.move.collision
tag @s remove bs.move.collision_on_x
tag @s remove bs.move.collision_on_y
tag @s remove bs.move.collision_on_z

# Collision mode (if bs.opt.0 is not defined, it will init it to 0, which correcpond to no collision)
scoreboard players operation #move.collision bs.data = @s bs.opt.0

# Decomposition   Vi -> A * Vn   with   bs.opt.0 := ||Vn||
execute unless score #move.collision bs.data matches 0 run scoreboard players operation @s bs.opt.0 = @s bs.opt.1
execute unless score #move.collision bs.data matches 0 run function bs.vector:fast_normalize

# Apply movement
scoreboard players set #A bs.data 1000
scoreboard players operation #A bs.data /= @s bs.out.0
scoreboard players operation #A.save bs.data = #A bs.data

# Vn -> new position
scoreboard players operation @s bs.loc.rx = @s bs.vector.x
scoreboard players operation @s bs.loc.ry = @s bs.vector.y
scoreboard players operation @s bs.loc.rz = @s bs.vector.z

execute at @s if score #A bs.data matches 1.. run function bs.move:by_vector/child/loop

# Rest of decomposition : Vr = Vi - A * Vn
# Vr := Relative position
scoreboard players operation #A.Vn.x bs.data = @s bs.loc.rx
scoreboard players operation #A.Vn.y bs.data = @s bs.loc.rx
scoreboard players operation #A.Vn.z bs.data = @s bs.loc.rx

scoreboard players operation #A.Vn.x bs.data *= #A.save bs.data
scoreboard players operation #A.Vn.y bs.data *= #A.save bs.data
scoreboard players operation #A.Vn.z bs.data *= #A.save bs.data

scoreboard players operation @s bs.loc.rx = #Vi.x bs.data
scoreboard players operation @s bs.loc.ry = #Vi.y bs.data
scoreboard players operation @s bs.loc.rz = #Vi.z bs.data 

scoreboard players operation @s bs.loc.rx -= #A.Vn.x bs.data
scoreboard players operation @s bs.loc.ry -= #A.Vn.y bs.data
scoreboard players operation @s bs.loc.rz -= #A.Vn.z bs.data 

# Apply movement for the rest
execute at @s[tag=!bs.move.collision] run function bs.move:by_vector/child/loop

# Restore
scoreboard players operation @s bs.out.0 = #move.by_vector.out.0 bs.data
scoreboard players operation @s bs.loc.rx = #move.by_vector.loc.rx bs.data
scoreboard players operation @s bs.loc.ry = #move.by_vector.loc.ry bs.data
scoreboard players operation @s bs.loc.rz = #move.by_vector.loc.rz bs.data
scoreboard players operation @s bs.vector.x = #Vi.x bs.data
scoreboard players operation @s bs.vector.y = #Vi.y bs.data
scoreboard players operation @s bs.vector.z = #Vi.z bs.data

# Reset option score to avoid border effects
scoreboard players reset @s bs.opt.0
scoreboard players reset @s bs.opt.1