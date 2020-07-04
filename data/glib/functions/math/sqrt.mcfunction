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



# Negative number exception
scoreboard players operation math.sqrt.X glib.tmp = @s glib.var0
execute if score math.sqrt.X glib.tmp matches ..-1 run scoreboard players operation math.sqrt.X glib.tmp *= -1 glib.const

# A = 0
scoreboard players set math.sqrt.A glib.tmp 0

# B = 32768 // limit max X
scoreboard players set math.sqrt.B glib.tmp 32768

# Diff = A^2 - X
scoreboard players set math.sqrt.diff glib.tmp 0
scoreboard players operation math.sqrt.diff glib.tmp -= math.sqrt.X glib.tmp


# while(                  Diff != 0                   &&                 B > 1                  ){               run              }
execute unless score math.sqrt.diff glib.tmp matches 0 if score math.sqrt.B glib.tmp matches 2.. run function glib_child:math/sqrt

# return
scoreboard players operation @s glib.res0 = math.sqrt.A glib.tmp

#__________________________________________________
# DEBUG

# Start Debug
execute if entity @a[tag=glib.debug.math.sqrt] run tellraw @a[tag=glib.debug] [{"text":"> DEBUG | glib:math/sqrt","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove glib.debug.math.sqrt"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]
execute if entity @e[tag=glib.debug.math.sqrt] run function glib_debug:global/message/info/entity_info
execute if entity @e[tag=glib.debug.math.sqrt] run tellraw @a ["",{"text":"   x = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.var0"},"color":"gold"},{"text":" sqrt(x) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
execute if entity @a[tag=glib.debug.math.sqrt] run function glib_debug:global/message/info/end_debug
# End Debug
# Start Error
execute if score @s glob.var0 matches ..-1 run tellraw @a[tag=glib.debug] [{"text":"ERROR | glib:math/sqrt","color":"red"}]
execute if score @s glob.var0 matches ..-1 run function glib_debug:global/message/error/entity_info
execute if score @s glob.var0 matches ..-1 run tellraw @a[tag=glib.debug] [{"text":"   Forbiden parameter: input can't be negative. Assuming you want a complexe number...","color":"red"}]
# End Error
