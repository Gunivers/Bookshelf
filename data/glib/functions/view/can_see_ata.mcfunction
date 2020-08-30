#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:view/can_see_ata
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#view
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#glib.var0 -> Range*2 (1 blocs -> glib.var0 = 2)
scoreboard players set @s[tag=!glib.config.override] glib.var0 200

#__________________________________________________
# CODE

tag @s remove glib_CanSee

execute at @s run summon area_effect_cloud ~ ~1.7 ~ {Tags:["glib","glib.canSee.aim","glib.canSee.tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["glib","glib.canSee.target","glib.canSee.tmp"]}

execute as @e[tag=glib.canSee.aim] positioned as @s facing entity @e[tag=glib.canSee.target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~

scoreboard players operation @e[tag=glib.canSee.aim] glib.var0 = @s glib.var0

execute as @e[tag=glib.canSee.aim] at @s run function glib_child:default/view/can_see-loop

execute at @e[tag=glib.canSee.aim] if entity @e[tag=glib.canSee.target,distance=..1] run tag @s add glib.canSee

kill @e[tag=glib.canSee.tmp]
