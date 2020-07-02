#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors: Syl2010
# MC Version: 1.13
# Last check:

# Original path: glib:view/aimed_block
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#view
# Parallelizable: <true/false/global>
# Note: Summon a new entity in the block targeted by executing entity. The new entity retrieves the ID of the executing entity in the scoreboard glib.id.parent and get the tag NewAimedBlock.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy

#__________________________________________________
# CONFIG

# glib.var0 -> Range*10 (10 blocs -> glib.var0 = 100): Max distance limit for raycast
scoreboard players set @s[tag=!glib.config.override] glib.var0 100

#__________________________________________________
# CODE

scoreboard players operation @s glib.id.target = @s glib.id
function glib:id/check_parent
kill @e[tag=AimedBlock,tag=glib.id.parent.match]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["Glib","AimedBlock","NewAimedBlock"]}
scoreboard players operation @e[tag=NewAimedBlock] glib.id.parent = @s glib.id
tp @e[tag=NewAimedBlock] @s
execute at @s run tp @e[tag=NewAimedBlock] ~ ~1.7 ~

# CONFIG: glib.var0 -> Range*10 (10 blocks -> glib.var0 = 100)
scoreboard players operation @e[tag=NewAimedBlock] glib.var0 = @s glib.var0

execute as @e[tag=NewAimedBlock] at @s run function glib_child:view/aimed_block_raycast
execute as @e[tag=NewAimedBlock] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
tag @e remove NewAimedBlock
