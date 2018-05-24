# NAME: Move Entity By Vector
# PATH: gunivers-lib:entity/location/move

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Vectors (Import file)
# - Gunivers-Lib:Utils/Import/Vars (Import file)
# - Gunivers-Lib:Utils/Import/Constant (Import file)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# OUTPUT:

# CODE:
scoreboard players operation @s VectorX *= @s VectorSpeed
scoreboard players operation @s VectorY *= @s VectorSpeed
scoreboard players operation @s VectorZ *= @s VectorSpeed
scoreboard players operation @s VectorX /= 1000 Constant
scoreboard players operation @s VectorY /= 1000 Constant
scoreboard players operation @s VectorZ /= 1000 Constant
scoreboard players set @s VectorSpeed 1000

scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var2 = @s VectorY
scoreboard players operation @s Var3 = @s VectorZ

#tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Location/Move_By_Vector]=-","color":"green"}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
#tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
#tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

scoreboard players set @s Var4 0

tag @s remove FactorIncrease
tag @s[scores={Var1=1001..}] add FactorIncrease
tag @s[scores={Var2=1001..}] add FactorIncrease
tag @s[scores={Var3=1001..}] add FactorIncrease
tag @s[scores={Var1=..-1001}] add FactorIncrease
tag @s[scores={Var2=..-1001}] add FactorIncrease
tag @s[scores={Var3=..-1001}] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] Var4 1

#tellraw @a[tag=Debug] ["",{"text":"\n>>> Loop 1 <<<","color":"green"}]

#tellraw @a[tag=Debug] ["",{"text":"\nOUTPUT1 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}}]
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT1 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

execute if entity @s[tag=FactorIncrease] run function gunivers-lib:entity/location/child/move_by_vector_loop1

scoreboard players operation @s[scores={Var4=1..}] Var7 = @s Var1
scoreboard players operation @s[scores={Var4=1..}] Var8 = @s Var2
scoreboard players operation @s[scores={Var4=1..}] Var9 = @s Var3

#tellraw @a[tag=Debug] ["",{"text":"\n>>> Loop 2 <<<","color":"green"}]
function gunivers-lib:entity/location/child/move_by_vector_loop2


