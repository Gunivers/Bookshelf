# NAME: Move Entity By Vector
# PATH: gunivers-lib:entity/move/by_local_vector

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# INPUT:
# - VectorLeft (score dummy)
# - VectorUp (score dummy)
# - VectorFront (score dummy)
# - VectorSpeedLocal (score dummy)

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

scoreboard objectives add VectorLeft dummy
scoreboard objectives add VectorUp dummy
scoreboard objectives add VectorFront dummy
scoreboard objectives add VectorSpeedLocal dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s VectorLeft *= @s VectorSpeedLocal
scoreboard players operation @s VectorUp *= @s VectorSpeedLocal
scoreboard players operation @s VectorFront *= @s VectorSpeedLocal
scoreboard players operation @s VectorLeft /= 1000 Constant
scoreboard players operation @s VectorUp /= 1000 Constant
scoreboard players operation @s VectorFront /= 1000 Constant
scoreboard players set @s VectorSpeedLocal 1000

scoreboard players operation @s Var1 = @s VectorLeft
scoreboard players operation @s Var2 = @s VectorUp
scoreboard players operation @s Var3 = @s VectorFront

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/move/by_local_vector/1
# -----


scoreboard players set @s Var4 0

tag @s remove FactorIncrease
tag @s[scores={Var1=1001..}] add FactorIncrease
tag @s[scores={Var2=1001..}] add FactorIncrease
tag @s[scores={Var3=1001..}] add FactorIncrease
tag @s[scores={Var1=..-1001}] add FactorIncrease
tag @s[scores={Var2=..-1001}] add FactorIncrease
tag @s[scores={Var3=..-1001}] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] Var4 1


# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/move/by_local_vector/2
# -----

execute if entity @s[tag=FactorIncrease] run function gunivers-lib:entity/move/child/by_local_vector/loop1

scoreboard players operation @s[scores={Var4=1..}] Var7 = @s Var1
scoreboard players operation @s[scores={Var4=1..}] Var8 = @s Var2
scoreboard players operation @s[scores={Var4=1..}] Var9 = @s Var3

function gunivers-lib:entity/move/child/by_local_vector/loop2


