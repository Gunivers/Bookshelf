#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:move/by_local_vector
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.collision dummy

scoreboard objectives add glib.vectorLeft dummy
scoreboard objectives add glib.vectorLeft dummy
scoreboard objectives add glib.vectorFront dummy
scoreboard objectives add VectorSpeedLocal dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var0 = @s glib.vectorLeft
scoreboard players operation @s glib.var1 = @s glib.vectorLeft
scoreboard players operation @s glib.var2 = @s glib.vectorFront

# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_ByLocalVector,tag=!glib.menu] run function glib:debug/move/by_local_vector/1
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
execute if entity @a[tag=glib.debug,tag=Debug_Move_ByLocalVector,tag=!glib.menu] run function glib:debug/move/by_local_vector/2
# -----

execute if entity @s[tag=FactorIncrease] run function glib_child:move/by_local_vector/loop1

scoreboard players operation @s[scores={glib.var3=1..}] glib.var6 = @s glib.var0
scoreboard players operation @s[scores={glib.var3=1..}] glib.var7 = @s glib.var1
scoreboard players operation @s[scores={glib.var3=1..}] glib.var8 = @s glib.var2

function glib_child:move/by_local_vector/loop2
