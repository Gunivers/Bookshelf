#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.view:can_see_ata
# Documentation: https://bs-core.readthedocs.io//entity#view
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#bs.in.0 -> Range*2 (1 blocs -> bs.in.0 = 2)
scoreboard players set @s[tag=!bs.config.override] bs.in.0 200

#__________________________________________________
# CODE

tag @s remove bs_CanSee

execute at @s run summon area_effect_cloud ~ ~1.7 ~ {Tags:["bs","bs.canSee.aim","bs.canSee.tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["bs","bs.canSee.target","bs.canSee.tmp"]}

execute as @e[tag=bs.canSee.aim] positioned as @s facing entity @e[tag=bs.canSee.target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~

scoreboard players operation @e[tag=bs.canSee.aim] bs.in.0 = @s bs.in.0

execute as @e[tag=bs.canSee.aim] at @s run function bs.view:can_see/child/can_see-loop

execute at @e[tag=bs.canSee.aim] if entity @e[tag=bs.canSee.target,distance=..1] run tag @s add bs.canSee

kill @e[tag=bs.canSee.tmp]
