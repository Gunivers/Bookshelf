#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/move/forward
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
scoreboard objectives add VectorSpeedLocal dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s Var3 = @s VectorFront

# Apply speed modifier
scoreboard players operation @s Var3 *= @s VectorSpeed
scoreboard players operation @s Var3 /= 1000 Constant

# DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Move_Forward,tag=!Glib_Init_Menu] run function glib:core/utils/debug/entity/move/forward/main
# -----

scoreboard players set @s Var4 1
tag @s add FactorIncrease

execute if entity @s[tag=FactorIncrease] run function glib:entity/move/child/forward/loop1

scoreboard players operation @s[scores={Var4=1..}] Var7 = @s Var3

function glib:entity/move/child/forward/loop2
