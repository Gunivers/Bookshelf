#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/move/by_local_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

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

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s Var1 = @s VectorLeft
scoreboard players operation @s Var2 = @s VectorUp
scoreboard players operation @s Var3 = @s VectorFront

# Apply speed modifier
scoreboard players operation @s Var1 *= @s VectorSpeedLocal
scoreboard players operation @s Var2 *= @s VectorSpeedLocal
scoreboard players operation @s Var3 *= @s VectorSpeedLocal
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var2 /= 1000 Constant
scoreboard players operation @s Var3 /= 1000 Constant

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/by_local_vector/1
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
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/by_local_vector/2
# -----

execute if entity @s[tag=FactorIncrease] run function glib:entity/move/child/by_local_vector/loop1

scoreboard players operation @s[scores={Var4=1..}] Var7 = @s Var1
scoreboard players operation @s[scores={Var4=1..}] Var8 = @s Var2
scoreboard players operation @s[scores={Var4=1..}] Var9 = @s Var3

function glib:entity/move/child/by_local_vector/loop2
