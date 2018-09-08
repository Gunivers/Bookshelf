# NAME: Vector Addition
# PATH: Gunivers-Lib:Entity/Vectors/Addition

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Temporary (Import file)

# INPUT:
# - VectorX (score dummy)  \
# - Vectory (score dummy)   | Initial vectors
# - Vectorz (score dummy)  /
# - Tmp1 (score dummy)     \
# - Tmp2 (score dummy)      | Additionnal Vectors
# - Tmp3 (score dummy)     /
# - Tmp4 (score dummy)     <- Intial vectors coefficient
# - Tmp5 (score dummy)     <- Additionnal vectors coefficient

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# CODE:
#____________________________________________________________________________________________________


tellraw @a[tag=DebugVectorsAdd] ["",{"text":"   -=[ Debug Vector Addition ]=-","color":"green"}]
tellraw @a[tag=DebugVectorsAdd] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
tellraw @a[tag=DebugVectorsAdd] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp1"}},{"text":".   Y2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]
tellraw @a[tag=DebugVectorsAdd] ["",{"text":"INPUT -> ","color":"gray"},{"text":"M1: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}},{"text":".   M2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp5"}}]

scoreboard players operation @s Tmp6 = @s VectorX 
scoreboard players operation @s Tmp7 = @s VectorY 
scoreboard players operation @s Tmp8 = @s VectorZ 

scoreboard players operation @s VectorX = @s Tmp1 
scoreboard players operation @s VectorY = @s Tmp2 
scoreboard players operation @s VectorZ = @s Tmp3 

function Gunivers-Lib:Entity/Vectors/Normalize

scoreboard players operation @s Tmp1 = @s VectorX 
scoreboard players operation @s Tmp2 = @s VectorY 
scoreboard players operation @s Tmp3 = @s VectorZ 

scoreboard players operation @s VectorX = @s Tmp6
scoreboard players operation @s VectorY = @s Tmp7
scoreboard players operation @s VectorZ = @s Tmp8

tellraw @a[tag=DebugVectorsAdd] ["",{"text":"INPUT (normalized) -> ","color":"gray"},{"text":"X2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp1"}},{"text":".   Y2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]

scoreboard players operation @s VectorX *= @s Tmp4
scoreboard players operation @s VectorY *= @s Tmp4
scoreboard players operation @s VectorZ *= @s Tmp4

scoreboard players operation @s Tmp1 *= @s Tmp5
scoreboard players operation @s Tmp2 *= @s Tmp5
scoreboard players operation @s Tmp3 *= @s Tmp5

scoreboard players operation @s VectorX += @s Tmp1
scoreboard players operation @s VectorY += @s Tmp2
scoreboard players operation @s VectorZ += @s Tmp3

tellraw @a[tag=DebugVectorsAdd] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]


tellraw @a[tag=DebugVectorsAdd] ["",{"text":"OUTPUT (normalized) -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
