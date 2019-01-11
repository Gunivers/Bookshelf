# NAME: Move Entity By Vector
# PATH: gunivers-lib:entity/move/by_vector

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Vars (module)
# - Constats (module)
# - Vectors (module)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# OUTPUT:

# CONFIGURATION:
# Manage precision of collision detection (1000 = 1 block). More the system is accurate and more it will be heavy to run.
scoreboard players set @s Var5 1000

# CODE:
#____________________________________________________________________________________________________


# Apply speed modifier
scoreboard players operation @s VectorX *= @s VectorSpeed
scoreboard players operation @s VectorY *= @s VectorSpeed
scoreboard players operation @s VectorZ *= @s VectorSpeed
scoreboard players operation @s VectorX /= 1000 Constant
scoreboard players operation @s VectorY /= 1000 Constant
scoreboard players operation @s VectorZ /= 1000 Constant
scoreboard players set @s VectorSpeed 1000

# Copy of vectors
scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var2 = @s VectorY
scoreboard players operation @s Var3 = @s VectorZ

#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Move/By_Vector]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
#tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

scoreboard players set @s Var4 1
scoreboard players operation @s Var5 *= -1 Constant


#tellraw @a[tag=Debug] ["",{"text":"\n>>> Loop 1 <<<","color":"green"}]

#tellraw @a[tag=Debug] ["",{"text":"\nOUTPUT1 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}}]
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT1 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

# Divide vector
execute if entity @s run function gunivers-lib:entity/move/child/by_vector/loop1

scoreboard players operation @s[scores={Var4=1..}] Var7 = @s Var1
scoreboard players operation @s[scores={Var4=1..}] Var8 = @s Var2
scoreboard players operation @s[scores={Var4=1..}] Var9 = @s Var3

# tellraw @a ["",{"text":"-----\nX: "},{"score":{"name":"@s","objective":"VectorX"}},{"text":"\nY: "},{"score":{"name":"@s","objective":"VectorX"}},{"text":"\nZ: "},{"score":{"name":"@s","objective":"VectorX"}},{"text":"\nFactor: "},{"score":{"name":"@s","objective":"LocX"}},{"text":"\nX: "},{"score":{"name":"@s","objective":"VectorX"}},{"text":"\nY: "},{"score":{"name":"@s","objective":"VectorX"}},{"text":"\nZ: "},{"score":{"name":"@s","objective":"VectorX"}}]

#tellraw @a[tag=Debug] ["",{"text":"\n>>> Loop 2 <<<","color":"green"}]
function gunivers-lib:entity/move/child/by_vector/loop2


