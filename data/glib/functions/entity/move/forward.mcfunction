#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/move/forward
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
scoreboard objectives add VectorSpeedLocal dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var2 = @s VectorFront

# Apply speed modifier
scoreboard players operation @s glib.var2 *= @s VectorSpeed
scoreboard players operation @s glib.var2 /= 1000 glib.const

# DEBUG
execute if entity @a[tag=glib.debug,tag=Debug_Move_Forward,tag=!Glib_Menu] run function glib:core/utils/debug/entity/move/forward/main
# -----

scoreboard players set @s glib.var3 1
tag @s add FactorIncrease

execute if entity @s[tag=FactorIncrease] run function glib:entity/move/zzz_child/forward/loop1

scoreboard players operation @s[scores={glib.var3=1..}] glib.var6 = @s glib.var2

function glib:entity/move/zzz_child/forward/loop2
