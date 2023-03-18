#__________________________________________________
# INFO     Copyright © 2021 Altearn.

#__________________________________________________
# INIT

function bs.core:import/scores
function bs.core:import/constants

#__________________________________________________
# CODE

function bs.core:security

# Bookshelf Menu
execute if score menu.refresh bs.data matches 5.. run scoreboard players set menu.refresh bs.data 0
scoreboard players add menu.refresh bs.data 1
execute if entity @a[tag=bs.menu.active] run function bs.core:menu

# Cache
function bs.cache:cache_loop

# Loop Schedule
execute as @e[tag=bs_Cache_Head] at @s run function bs_child:default/core/schedule/loop_schedule

# Start Debug
# Debug Recorder
execute as @a[tag=bs.debug.stick] run function bs.core:menu/debug/debug_stick
execute as @a[tag=bs.debug,tag=bs.debug.global.display_tick] run function bs.core:debug/display_tick
execute as @a[tag=bs.debug,tag=bs.debug.entity.target_entity_manager,limit=1] at @s run function bs.core:menu/debug/target_entity_manager

# Debug Id
scoreboard players add @e bs.debug.id 0
execute as @e[scores={bs.debug.id=0},limit=1] run scoreboard players add debug.id bs.data 1
execute as @e[scores={bs.debug.id=0},limit=1] run scoreboard players operation @s bs.debug.id = debug.id bs.data
# End Debug

# Life time
scoreboard players add @e bs.lifetime 1
tag @e remove bs.health.safekill.excluded
execute as @e[scores={bs.lifetime=-1}] run function bs.core:entity/safe_kill
kill @e[scores={bs.lifetime=-1},tag=!bs.health.safekill.excluded]