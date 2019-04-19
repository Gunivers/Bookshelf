# NAME: Move Entity By Vector
# PATH: gunivers-lib:entity/move/by_vector

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy
scoreboard objectives add Var7 dummy
scoreboard objectives add Var8 dummy
scoreboard objectives add Var9 dummy

scoreboard objectives add Collision dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

# CONFIGURATION:
# Manage precision of collision detection (1000 = 1 block). More the system is accurate and more it will be heavy to run.
scoreboard players set @s[tag=!Glib_Override_Config] Var5 500

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

tellraw @a[tag=Debug] ["",{"text":"OUTPUT 1 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]


# Copy of vectors
scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var2 = @s VectorY
scoreboard players operation @s Var3 = @s VectorZ

scoreboard players set @s Var4 1


# Divide vector
execute if entity @s run function gunivers-lib:entity/move/child/by_vector/loop1
tellraw @a[tag=Debug] ["",{"text":"OUTPUT 2 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]


scoreboard players operation @s[scores={Var4=1..}] Var7 = @s Var1
scoreboard players operation @s[scores={Var4=1..}] Var8 = @s Var2
scoreboard players operation @s[scores={Var4=1..}] Var9 = @s Var3

# tellraw @a ["",{"text":"-----\nPrecision: "},{"score":{"name":"@s","objective":"Var5"}},{"text":"\nX: "},{"score":{"name":"@s","objective":"VectorX"}},{"text":"\nY: "},{"score":{"name":"@s","objective":"VectorY"}},{"text":"\nZ: "},{"score":{"name":"@s","objective":"VectorZ"}},{"text":"\nFactor: "},{"score":{"name":"@s","objective":"Var4"}},{"text":"\nX: "},{"score":{"name":"@s","objective":"Var7"}},{"text":"\nY: "},{"score":{"name":"@s","objective":"Var8"}},{"text":"\nZ: "},{"score":{"name":"@s","objective":"Var9"}}]


function gunivers-lib:entity/move/child/by_vector/loop2
tellraw @a[tag=Debug] ["",{"text":"OUTPUT 3 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]


