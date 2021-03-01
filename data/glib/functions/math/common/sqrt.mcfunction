#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:math/sqrt
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/math
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

#__________________________________________________
#                     SQRT
#__________________________________________________
# X := unkown number
# A := search head
# B := incrementor/decrementor
#__________________________________________________
# A = 2
# B = 32769 // limit for X
# Diff = A^2 - X
#
# While Diff != 0 && B > 1    // in glib_child:math/sqrt
#    B /= 2
#    if A^2 < X
#       A += B
#    else
#       A -= B
#    Diff = A^2 - X
#__________________________________________________

# Backup
scoreboard players operation math.sqrt.var0 glib = @s glib.var0
scoreboard players operation math.sqrt.res1 glib = @s glib.res1

# Negative number exception
execute if score @s glib.var0 matches ..-1 run scoreboard players operation @s glib.var0 *= -1 glib.const
scoreboard players operation math.sqrt.X glib = @s glib.var0

# A = 0
scoreboard players set math.sqrt.A glib 0

# B = 32768 // limit max X
function glib:math/special/get_next_pow2
scoreboard players operation math.sqrt.B glib = @s res0
execute if entity @s[tag=!glib.math.getNextPow2.intOverflow] run scoreboard players operation math.sqrt.B glib = @s glib.res0
execute if entity @s[tag=glib.math.getNextPow2.intOverflow] run scoreboard players set math.sqrt.B glib 65536
execute if score @s glib.res0 matches 65536.. run scoreboard players set math.sqrt.B glib 65536

execute if entity @a[tag=glib.debug.math.sqrt] run tellraw @a[tag=glib.debug] [{"text":"> DEBUG | glib:math/sqrt","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove glib.debug.math.sqrt"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]
execute if entity @e[tag=glib.debug.math.sqrt] run function glib_utils:debug/global/message/info/entity_info
execute if entity @e[tag=glib.debug.math.sqrt] run tellraw @a ["",{"text":"   B = ","color":"dark_gray"},{"score":{"name":"math.sqrt.B","objective":"glib"},"color":"gold"}]

# Diff = A^2 - X
scoreboard players set math.sqrt.diff glib 0
scoreboard players operation math.sqrt.diff glib -= math.sqrt.X glib


# while(                  Diff != 0                   &&                 B > 1                  ){               run              }
execute unless score math.sqrt.diff glib matches 0 if score math.sqrt.B glib matches 2.. run function glib:math/child/sqrt

# return
scoreboard players operation @s glib.res0 = math.sqrt.A glib

# Restore
scoreboard players operation @s glib.var0 = math.sqrt.var0 glib
scoreboard players operation @s glib.res1 = math.sqrt.res1 glib

#__________________________________________________
# DEBUG

# Start Debug

execute if entity @e[tag=glib.debug.math.sqrt] run tellraw @a ["",{"text":"   x = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.var0"},"color":"gold"},{"text":" sqrt(x) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
execute if entity @a[tag=glib.debug.math.sqrt] run function glib_utils:debug/global/message/info/end_debug
# End Debug
# Start Error
execute if score @s glib.var0 matches ..-1 run tellraw @a[tag=glib.debug] [{"text":"ERROR | glib:math/sqrt","color":"red"}]
execute if score @s glib.var0 matches ..-1 run function glib_utils:debug/global/message/error/entity_info
execute if score @s glib.var0 matches ..-1 run tellraw @a[tag=glib.debug] [{"text":"   Forbiden parameter: input can't be negative. Assuming you want a complexe number...","color":"red"}]
# End Error
