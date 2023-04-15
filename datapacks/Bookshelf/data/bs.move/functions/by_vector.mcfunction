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
# At the end of each loop, it call the collision dispatcher function, that manage the collision according to the bs.collision score.
# If the bs.collision score is negative, it will use the built-in collision system (demo and general purposes)
# If the score is positive, it will use the user defined collision, calling the dispatcher at bs.config:move/by_vector/collision/__dispatcher__


# DATA BACKUP -----------------------------------------------------------------

# Vi (each component is expressed in milliblock)
scoreboard players operation #Vi.x bs.data = @s bs.vector.x
scoreboard players operation #Vi.y bs.data = @s bs.vector.y
scoreboard players operation #Vi.z bs.data = @s bs.vector.z

# Collision type
scoreboard players operation #collision bs.data = @s bs.collision

# Other edited scores that should be conserved
scoreboard players operation #move.by_vector.out.0 bs.data = @s bs.out.0
scoreboard players operation #move.by_vector.loc.x bs.data = @s bs.loc.x
scoreboard players operation #move.by_vector.loc.y bs.data = @s bs.loc.y
scoreboard players operation #move.by_vector.loc.z bs.data = @s bs.loc.z

# Remove remaining collision tags
tag @s remove bs.collision
tag @s remove bs.collision.x
tag @s remove bs.collision.y
tag @s remove bs.collision.z

# CODE ------------------------------------------------------------------------

# Decomposition Vi -> A * Vn
# Vt := Vn
function bs.vector:fast_normalize

scoreboard players operation #Vn.x bs.data = @s bs.vector.x
scoreboard players operation #Vn.y bs.data = @s bs.vector.y
scoreboard players operation #Vn.z bs.data = @s bs.vector.z

# Apply movement
scoreboard players set #A bs.data 1000
scoreboard players operation #A bs.data /= @s bs.out.0
scoreboard players operation #A.save bs.data = #A bs.data

scoreboard players operation #Vt.x bs.data = #Vn.x bs.data
scoreboard players operation #Vt.y bs.data = #Vn.y bs.data
scoreboard players operation #Vt.z bs.data = #Vn.z bs.data

scoreboard players operation @s bs.vector.x = #Vi.x bs.data
scoreboard players operation @s bs.vector.y = #Vi.y bs.data
scoreboard players operation @s bs.vector.z = #Vi.z bs.data

execute at @s if score #A bs.data matches 1.. run function bs.move:by_vector/child/loop

# Rest of decomposition : Vr = Vi - A * Vn
# Vt := Vr
scoreboard players operation #A.Vn.x bs.data = #Vn.x bs.data
scoreboard players operation #A.Vn.y bs.data = #Vn.y bs.data
scoreboard players operation #A.Vn.z bs.data = #Vn.z bs.data

scoreboard players operation #A.Vn.x bs.data *= #A.save bs.data
scoreboard players operation #A.Vn.y bs.data *= #A.save bs.data
scoreboard players operation #A.Vn.z bs.data *= #A.save bs.data

scoreboard players operation #Vt.x bs.data = #Vi.x bs.data
scoreboard players operation #Vt.y bs.data = #Vi.y bs.data
scoreboard players operation #Vt.z bs.data = #Vi.z bs.data 

scoreboard players operation #Vt.x bs.data -= #A.Vn.x bs.data
scoreboard players operation #Vt.y bs.data -= #A.Vn.y bs.data
scoreboard players operation #Vt.z bs.data -= #A.Vn.z bs.data 

# Apply movement for the rest
execute at @s[tag=!bs.collision] run function bs.move:by_vector/child/loop

# Restore
scoreboard players operation @s bs.out.0 = #move.by_vector.out.0 bs.data
scoreboard players operation @s bs.loc.x = #move.by_vector.loc.x bs.data
scoreboard players operation @s bs.loc.y = #move.by_vector.loc.y bs.data
scoreboard players operation @s bs.loc.z = #move.by_vector.loc.z bs.data