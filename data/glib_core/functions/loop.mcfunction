#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

#__________________________________________________
# INIT
scoreboard objectives add glib.data dummy
scoreboard objectives add glib.config dummy
scoreboard objectives add glib.const dummy
scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var6 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy
scoreboard objectives add glib.var9 dummy
scoreboard objectives add glib.res0 dummy
scoreboard objectives add glib.res1 dummy
scoreboard objectives add glib.res2 dummy
scoreboard objectives add glib.res3 dummy
scoreboard objectives add glib.res4 dummy
scoreboard objectives add glib.res5 dummy
scoreboard objectives add glib.res6 dummy
scoreboard objectives add glib.res7 dummy
scoreboard objectives add glib.res8 dummy
scoreboard objectives add glib.res9 dummy

scoreboard objectives add glib.debug.id dummy

function glib:core/import/constants

#__________________________________________________
# CODE

# Glib Menu
execute if score menu.refresh glib.data matches 5.. run scoreboard players set menu.refresh glib.data
scoreboard players add menu.refresh glib.data 1
execute if score menu.refresh glib.data matches 1 run function glib:core/menu/main

# Cache
function glib:core/utils/cache/cache_loop

# Loop Schedule
execute as @e[tag=Glib_Cache_Head] at @s run function glib_child:core/utils/schedule/loop_schedule

# Debug Recorder
execute as @a[tag=glib.debug.Stick] run function glib:core/menu/debug/debug_stick
execute as @a[tag=glib.debug,tag=glib.debug.global.display.tick] run function glib:core/debug/display_tick
execute as @a[tag=glib.debug,tag=glib.debug.entity.target_entity_manager,limit=1] at @s run function glib:core/menu/debug/entity/target_entity_manager

# Debug Id
scoreboard players add @e glib.debug.id 0
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players add debug.id glib.data 1
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players operation @s glib.debug.id = debug.id glib.data
