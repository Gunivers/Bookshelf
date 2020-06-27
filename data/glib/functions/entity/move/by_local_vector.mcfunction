#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/move/by_local_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var6 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy

scoreboard objectives add Collision dummy

scoreboard objectives add VectorLeft dummy
scoreboard objectives add VectorUp dummy
scoreboard objectives add VectorFront dummy
scoreboard objectives add VectorSpeedLocal dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var0 = @s VectorLeft
scoreboard players operation @s glib.var1 = @s VectorUp
scoreboard players operation @s glib.var2 = @s VectorFront

# Apply speed modifier
scoreboard players operation @s glib.var0 *= @s VectorSpeedLocal
scoreboard players operation @s glib.var1 *= @s VectorSpeedLocal
scoreboard players operation @s glib.var2 *= @s VectorSpeedLocal
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var1 /= 1000 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const

# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_ByLocalVector,tag=!glib.menu] run function glib:utils/debug/entity/move/by_local_vector/1
# -----

scoreboard players set @s glib.var3 0

tag @s remove FactorIncrease
tag @s[scores={glib.var0=1001..}] add FactorIncrease
tag @s[scores={glib.var1=1001..}] add FactorIncrease
tag @s[scores={glib.var2=1001..}] add FactorIncrease
tag @s[scores={glib.var0=..-1001}] add FactorIncrease
tag @s[scores={glib.var1=..-1001}] add FactorIncrease
tag @s[scores={glib.var2=..-1001}] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] glib.var3 1

# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_ByLocalVector,tag=!glib.menu] run function glib:utils/debug/entity/move/by_local_vector/2
# -----

execute if entity @s[tag=FactorIncrease] run function glib_child:entity/move/by_local_vector/loop1

scoreboard players operation @s[scores={glib.var3=1..}] glib.var6 = @s glib.var0
scoreboard players operation @s[scores={glib.var3=1..}] glib.var7 = @s glib.var1
scoreboard players operation @s[scores={glib.var3=1..}] glib.var8 = @s glib.var2

function glib_child:entity/move/by_local_vector/loop2
