# INFO ------------------------------------------------------------------------
# Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:

# Version: 2.0.0
# Created: ??/??/2018 (1.13)
# Last verification:
# Last modification:

# Original path: bs.math:sqrt
# Documentation: /docs/math.md#square_root
# Note:

# PARAMETERS ------------------------------------------------------------------

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

#   -----------------------------------------------------
#                    SQRT - principle
#   -----------------------------------------------------
#   X := unkown number
#   A := search head
#   B := incrementor/decrementor
#   -----------------------------------------------------
#   A = 2
#   B = 32769 // limit for X
#   Diff = A^2 - X
#
#   While Diff != 0 && B > 1    // in bs_child:math/sqrt
#     B /= 2
#     if A^2 < X
#       A += B
#     else
#       A -= B
#     Diff = A^2 - X
#   -----------------------------------------------------

# Backup
scoreboard players operation math.sqrt.var0 bs = @s bs.in.0
scoreboard players operation math.sqrt.res1 bs = @s bs.out.1

# Negative number exception
execute if score @s bs.in.0 matches ..-1 run scoreboard players operation @s bs.in.0 *= -1 bs.const
scoreboard players operation math.sqrt.X bs = @s bs.in.0

# A = 0
scoreboard players set math.sqrt.A bs 0

# B = 32768 // limit max X
function bs.math:get_next_pow2
scoreboard players operation math.sqrt.B bs = @s res0
execute if entity @s[tag=!bs.math.getNextPow2.intOverflow] run scoreboard players operation math.sqrt.B bs = @s bs.out.0
execute if entity @s[tag=bs.math.getNextPow2.intOverflow] run scoreboard players set math.sqrt.B bs 65536
execute if score @s bs.out.0 matches 65536.. run scoreboard players set math.sqrt.B bs 65536

execute if entity @a[tag=bs.debug.math.sqrt] run tellraw @a[tag=bs.debug] [{"text":"> DEBUG | bs.math:sqrt","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove bs.debug.math.sqrt"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]
execute if entity @e[tag=bs.debug.math.sqrt] run function bs.core:debug/message/info/entity_info
execute if entity @e[tag=bs.debug.math.sqrt] run tellraw @a ["",{"text":"   B = ","color":"dark_gray"},{"score":{"name":"math.sqrt.B","objective":"bs"},"color":"gold"}]

# Diff = A^2 - X
scoreboard players set math.sqrt.diff bs 0
scoreboard players operation math.sqrt.diff bs -= math.sqrt.X bs


# while(                             Diff != 0   &&                       B > 1      ){                 ...                    }
execute unless score math.sqrt.diff bs matches 0 if score math.sqrt.B bs matches 2.. run function bs.math:sqrt/child/loop

# return
scoreboard players operation @s bs.out.0 = math.sqrt.A bs

# Restore
scoreboard players operation @s bs.in.0 = math.sqrt.var0 bs
scoreboard players operation @s bs.out.1 = math.sqrt.res1 bs

#__________________________________________________
# DEBUG

# Start Debug

execute if entity @e[tag=bs.debug.math.sqrt] run tellraw @a ["",{"text":"   x = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.in.0"},"color":"gold"},{"text":" sqrt(x) = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.out.0"},"color":"gold"}]
execute if entity @a[tag=bs.debug.math.sqrt] run function bs.core:debug/message/info/end_debug
# End Debug
# Start Error
execute if score @s bs.in.0 matches ..-1 run tellraw @a[tag=bs.debug] [{"text":"ERROR | bs.math:sqrt","color":"red"}]
execute if score @s bs.in.0 matches ..-1 run function bs.core:debug/message/error/entity_info
execute if score @s bs.in.0 matches ..-1 run tellraw @a[tag=bs.debug] [{"text":"   Forbiden parameter: input can't be negative. Assuming you want a complexe number...","color":"red"}]
# End Error
