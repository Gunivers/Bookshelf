#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:
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

scoreboard players set @s bs.res0 1
scoreboard players set @s bs.res1 0

execute if score @s bs.var0 matches 0..1073741824 if score @s bs.res0 < @s bs.var0 run function bs.math:special/get_next_pow2/child/loop

tag @s remove bs.math.getNextPow2.intOverflow
tag @s remove bs.math.getNextPow2.wrongParameter
execute if score @s bs.var0 matches 1073741825.. run tag @s add bs.math.getNextPow2.intOverflow
execute if score @s bs.var0 matches ..-1 run tag @s add bs.math.getNextPow2.wrongParameter

#__________________________________________________
# DEBUG

# Start Debug
execute if entity @a[tag=bs.debug.math.getNextPow2] run tellraw @a[tag=bs.debug] [{"text":"> DEBUG | bs.math:get_next_pow2","color":"green","clickEvent":{"action":"run_command","value":"/tag @e remove bs.debug.math.sqrt"},"hoverEvent":{"action":"show_text","value":["",{"text":"Remove this debug"}]}}]
execute if entity @e[tag=bs.debug.math.getNextPow2] run function bs.core:debug/message/info/entity_info
execute if entity @e[tag=bs.debug.math.getNextPow2] run tellraw @a ["",{"text":"   x = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.var0"},"color":"gold"},{"text":" n = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res1"},"color":"gold"},{"text":" 2^n = ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"}]
execute if entity @a[tag=bs.debug.math.getNextPow2] run function bs.core:debug/message/info/end_debug
# End Debug

# Start Error
execute if score @s bs.var0 matches ..-1 run tellraw @a[tag=bs.debug] [{"text":"ERROR | bs.math:get_next_pow2","color":"red"}]
execute if score @s bs.var0 matches ..-1 run function bs.core:debug/message/error/entity_info
execute if score @s bs.var0 matches ..-1 run tellraw @a[tag=bs.debug] [{"text":"   Forbiden parameter: input can't be negative.","color":"red"}]
# End Error

# Start Error
execute if score @s bs.var0 matches 1073741825.. run tellraw @a[tag=bs.debug] [{"text":"ERROR | bs.math:get_next_pow2","color":"red"}]
execute if score @s bs.var0 matches 1073741825.. run function bs.core:debug/message/error/entity_info
execute if score @s bs.var0 matches 1073741825.. run tellraw @a[tag=bs.debug] [{"text":"   int overflow -> bs.var0 is too high!","color":"red"}]
# End Error
