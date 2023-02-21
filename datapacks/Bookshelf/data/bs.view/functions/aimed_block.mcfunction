#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors: Syl2010
# MC Version: 1.13
# Last check:

# Original path: bs.view:aimed_block
# Documentation: https://bs-core.readthedocs.io//entity#view
# Parallelizable: <true/false/global>
# Note: Summon a new entity in the block targeted by executing entity. The new entity retrieves the ID of the executing entity in the scoreboard bs.id.parent and get the tag bs.aimedBlock.new.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

# bs.in.0 -> Range*10 (10 blocs -> bs.in.0 = 100): Max distance limit for raycast
scoreboard players set @s[tag=!bs.config.override] bs.in.0 100

#__________________________________________________
# CODE

scoreboard players operation @s bs.targetId = @s bs.id
function bs.id:check_parent
kill @e[tag=bs.aimedBlock,tag=bs.id.parent.match]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["bs","bs.aimedBlock","bs.aimedBlock.new"]}
scoreboard players operation @e[tag=bs.aimedBlock.new] bs.id.parent = @s bs.id
tp @e[tag=bs.aimedBlock.new] @s
execute at @s run tp @e[tag=bs.aimedBlock.new] ~ ~1.7 ~

# CONFIG: bs.in.0 -> Range*10 (10 blocks -> bs.in.0 = 100)
scoreboard players operation @e[tag=bs.aimedBlock.new] bs.in.0 = @s bs.in.0

execute as @e[tag=bs.aimedBlock.new] at @s run function bs.view:aimed_block/child/aimed_block_raycast
execute as @e[tag=bs.aimedBlock.new] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
tag @e remove bs.aimedBlock.new
