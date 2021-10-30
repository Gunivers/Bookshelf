#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib.math:
# Documentation: https://glib-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note: Return the next power 2 of the number

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s glib.res0 1
scoreboard players set @s glib.res1 0

execute if score @s glib.var0 matches 0..1073741824 if score @s glib.res0 < @s glib.var0 run function glib.math:special/get_next_pow2/child/loop

tag @s remove glib.math.getNextPow2.intOverflow
tag @s remove glib.math.getNextPow2.wrongParameter
execute if score @s glib.var0 matches 1073741825.. run tag @s add glib.math.getNextPow2.intOverflow
execute if score @s glib.var0 matches ..-1 run tag @s add glib.math.getNextPow2.wrongParameter

#__________________________________________________
# DEBUG

# Start Debug
execute if entity @a[tag=glib.debug.math.getNextPow2] run tellraw @a[tag=glib.debug] [{"text":"> DEBUG | glib.math:get_next_pow2","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove glib.debug.math.sqrt"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]
execute if entity @e[tag=glib.debug.math.getNextPow2] run function glib.core:debug/global/message/info/entity_info
execute if entity @e[tag=glib.debug.math.getNextPow2] run tellraw @a ["",{"text":"   x = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.var0"},"color":"gold"},{"text":" n = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res1"},"color":"gold"},{"text":" 2^n = ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"}]
execute if entity @a[tag=glib.debug.math.getNextPow2] run function glib.core:debug/global/message/info/end_debug
# End Debug

# Start Error
execute if score @s glib.var0 matches ..-1 run tellraw @a[tag=glib.debug] [{"text":"ERROR | glib.math:get_next_pow2","color":"red"}]
execute if score @s glib.var0 matches ..-1 run function glib.core:debug/global/message/error/entity_info
execute if score @s glib.var0 matches ..-1 run tellraw @a[tag=glib.debug] [{"text":"   Forbiden parameter: input can't be negative.","color":"red"}]
# End Error

# Start Error
execute if score @s glib.var0 matches 1073741825.. run tellraw @a[tag=glib.debug] [{"text":"ERROR | glib.math:get_next_pow2","color":"red"}]
execute if score @s glib.var0 matches 1073741825.. run function glib.core:debug/global/message/error/entity_info
execute if score @s glib.var0 matches 1073741825.. run tellraw @a[tag=glib.debug] [{"text":"   int overflow -> glib.var0 is too high!","color":"red"}]
# End Error
