#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors: Syl2010
# MC Version: 1.13
# Last check:

# Original path: glib.view:aimed_block
# Documentation: https://glib-core.readthedocs.io//entity#view
# Parallelizable: <true/false/global>
# Note: Summon a new entity in the block targeted by executing entity. The new entity retrieves the ID of the executing entity in the scoreboard glib.parentId and get the tag glib.aimedBlock.new.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

# glib.var0 -> Range*10 (10 blocs -> glib.var0 = 100): Max distance limit for raycast
scoreboard players set @s[tag=!glib.config.override] glib.var0 100

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.id
function glib.id:check_parent
kill @e[tag=glib.aimedBlock,tag=glib.parentId.match]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["glib","glib.aimedBlock","glib.aimedBlock.new"]}
scoreboard players operation @e[tag=glib.aimedBlock.new] glib.parentId = @s glib.id
tp @e[tag=glib.aimedBlock.new] @s
execute at @s run tp @e[tag=glib.aimedBlock.new] ~ ~1.7 ~

# CONFIG: glib.var0 -> Range*10 (10 blocks -> glib.var0 = 100)
scoreboard players operation @e[tag=glib.aimedBlock.new] glib.var0 = @s glib.var0

execute as @e[tag=glib.aimedBlock.new] at @s run function glib.view:aimed_block/child/aimed_block_raycast
execute as @e[tag=glib.aimedBlock.new] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
tag @e remove glib.aimedBlock.new
