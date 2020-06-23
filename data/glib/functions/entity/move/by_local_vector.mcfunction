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

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy
scoreboard objectives add glib.var9 dummy

scoreboard objectives add Collision dummy

scoreboard objectives add VectorLeft dummy
scoreboard objectives add VectorUp dummy
scoreboard objectives add VectorFront dummy
scoreboard objectives add VectorSpeedLocal dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var = @s VectorLeft
scoreboard players operation @s glib.var2 = @s VectorUp
scoreboard players operation @s glib.var3 = @s VectorFront

# Apply speed modifier
scoreboard players operation @s glib.var *= @s VectorSpeedLocal
scoreboard players operation @s glib.var2 *= @s VectorSpeedLocal
scoreboard players operation @s glib.var3 *= @s VectorSpeedLocal
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const
scoreboard players operation @s glib.var3 /= 1000 glib.const

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/by_local_vector/1
# -----

scoreboard players set @s glib.var4 0

tag @s remove FactorIncrease
tag @s[scores={glib.var=1001..}] add FactorIncrease
tag @s[scores={glib.var2=1001..}] add FactorIncrease
tag @s[scores={glib.var3=1001..}] add FactorIncrease
tag @s[scores={glib.var=..-1001}] add FactorIncrease
tag @s[scores={glib.var2=..-1001}] add FactorIncrease
tag @s[scores={glib.var3=..-1001}] add FactorIncrease
scoreboard players add @s[tag=FactorIncrease] glib.var4 1

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_ByLocalVector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/by_local_vector/2
# -----

execute if entity @s[tag=FactorIncrease] run function glib:entity/move/child/by_local_vector/loop1

scoreboard players operation @s[scores={glib.var4=1..}] glib.var7 = @s glib.var
scoreboard players operation @s[scores={glib.var4=1..}] glib.var8 = @s glib.var2
scoreboard players operation @s[scores={glib.var4=1..}] glib.var9 = @s glib.var3

function glib:entity/move/child/by_local_vector/loop2
