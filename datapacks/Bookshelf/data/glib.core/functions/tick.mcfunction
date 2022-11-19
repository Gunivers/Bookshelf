#__________________________________________________
# INFO     Copyright © 2021 Altearn.

#__________________________________________________
# INIT

function bs.core:import/scores
function bs.core:import/constants

#__________________________________________________
# CODE

function bs.core:security

# Glib Menu
execute if score menu.refresh glib.data matches 5.. run scoreboard players set menu.refresh glib.data 0
scoreboard players add menu.refresh glib.data 1
execute if entity @a[tag=glib.menu.active] run function bs.core:menu

# Cache
function bs.cache:cache_loop

# Loop Schedule
execute as @e[tag=Glib_Cache_Head] at @s run function glib_child:default/core/schedule/loop_schedule

# Start Debug
# Debug Recorder
execute as @a[tag=glib.debug.stick] run function bs.core:menu/debug/debug_stick
execute as @a[tag=glib.debug,tag=glib.debug.global.display_tick] run function bs.core:debug/display_tick
execute as @a[tag=glib.debug,tag=glib.debug.entity.target_entity_manager,limit=1] at @s run function bs.core:menu/debug/target_entity_manager

# Debug Id
scoreboard players add @e glib.debug.id 0
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players add debug.id glib.data 1
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players operation @s glib.debug.id = debug.id glib.data
# End Debug

# Life time
scoreboard players add @e glib.lifetime 1
tag @e remove glib.health.safekill.excluded
execute as @e[scores={glib.lifetime=-1}] run function bs.health:safe_kill
kill @e[scores={glib.lifetime=-1},tag=!glib.health.safekill.excluded]