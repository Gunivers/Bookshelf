#__________________________________________________
# INFO     Copyright © 2021 Altearn.

#__________________________________________________
# INIT

function glib.core:import/scores
function glib.core:import/constants

#__________________________________________________
# CODE

function glib.core:security

# Glib Menu
execute if score menu.refresh glib.data matches 20.. run scoreboard players set menu.refresh glib.data 0
scoreboard players add menu.refresh glib.data 1
execute unless score menu.rules.commandBlockOutput glib.data matches 1 if score menu.refresh glib.data matches 1 as @a[tag=glib.menu] run function glib.core:menu/main
execute if score menu.rules.commandBlockOutput glib.data matches 1 as @a[tag=glib.menu] run function glib.core:menu/main

# Cache
function glib.cache:cache_loop

# Loop Schedule
execute as @e[tag=Glib_Cache_Head] at @s run function glib_child:default/core/schedule/loop_schedule

# Debug Recorder
execute as @a[tag=glib.debug.stick] run function glib.core:menu/debug/debug_stick
execute as @a[tag=glib.debug,tag=glib.debug.global.display_tick] run function glib.core:debug/display_tick
execute as @a[tag=glib.debug,tag=glib.debug.entity.target_entity_manager,limit=1] at @s run function glib.core:menu/debug/target_entity_manager

# Debug Id
scoreboard players add @e glib.debug.id 0
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players add debug.id glib.data 1
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players operation @s glib.debug.id = debug.id glib.data

# Life time
scoreboard players add @e glib.lifetime 1
execute as @e[scores={glib.lifetime=-1}] run function glib.health:safe_kill
kill @e[scores={glib.lifetime=-1},tag=!glib.health.safekill.excluded]