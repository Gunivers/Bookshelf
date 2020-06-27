#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

#__________________________________________________
# INIT
scoreboard objectives add glib.data dummy [{"text":"GLib ","color":"gold"},{"text":"Data","color":"dark_gray"}]
scoreboard objectives add glib.config dummy [{"text":"GLib ","color":"gold"},{"text":"Config","color":"dark_gray"}]
scoreboard objectives add glib.const dummy [{"text":"GLib ","color":"gold"},{"text":"Constants","color":"dark_gray"}]
scoreboard objectives add glib.var0 dummy [{"text":"GLib ","color":"gold"},{"text":"Var0","color":"dark_gray"}]
scoreboard objectives add glib.var1 dummy [{"text":"GLib ","color":"gold"},{"text":"Var1","color":"dark_gray"}]
scoreboard objectives add glib.var2 dummy [{"text":"GLib ","color":"gold"},{"text":"Var2","color":"dark_gray"}]
scoreboard objectives add glib.var3 dummy [{"text":"GLib ","color":"gold"},{"text":"Var3","color":"dark_gray"}]
scoreboard objectives add glib.var4 dummy [{"text":"GLib ","color":"gold"},{"text":"Var4","color":"dark_gray"}]
scoreboard objectives add glib.var5 dummy [{"text":"GLib ","color":"gold"},{"text":"Var5","color":"dark_gray"}]
scoreboard objectives add glib.var6 dummy [{"text":"GLib ","color":"gold"},{"text":"Var6","color":"dark_gray"}]
scoreboard objectives add glib.var7 dummy [{"text":"GLib ","color":"gold"},{"text":"Var7","color":"dark_gray"}]
scoreboard objectives add glib.var8 dummy [{"text":"GLib ","color":"gold"},{"text":"Var8","color":"dark_gray"}]
scoreboard objectives add glib.var9 dummy [{"text":"GLib ","color":"gold"},{"text":"Var9","color":"dark_gray"}]
scoreboard objectives add glib.res0 dummy [{"text":"GLib ","color":"gold"},{"text":"Res0","color":"dark_gray"}]
scoreboard objectives add glib.res1 dummy [{"text":"GLib ","color":"gold"},{"text":"Res1","color":"dark_gray"}]
scoreboard objectives add glib.res2 dummy [{"text":"GLib ","color":"gold"},{"text":"Res2","color":"dark_gray"}]
scoreboard objectives add glib.res3 dummy [{"text":"GLib ","color":"gold"},{"text":"Res3","color":"dark_gray"}]
scoreboard objectives add glib.res4 dummy [{"text":"GLib ","color":"gold"},{"text":"Res4","color":"dark_gray"}]
scoreboard objectives add glib.res5 dummy [{"text":"GLib ","color":"gold"},{"text":"Res5","color":"dark_gray"}]
scoreboard objectives add glib.res6 dummy [{"text":"GLib ","color":"gold"},{"text":"Res6","color":"dark_gray"}]
scoreboard objectives add glib.res7 dummy [{"text":"GLib ","color":"gold"},{"text":"Res7","color":"dark_gray"}]
scoreboard objectives add glib.res8 dummy [{"text":"GLib ","color":"gold"},{"text":"Res8","color":"dark_gray"}]
scoreboard objectives add glib.res9 dummy [{"text":"GLib ","color":"gold"},{"text":"Res9","color":"dark_gray"}]

scoreboard objectives add glib.debug.id dummy

function glib_core:import/constants

#__________________________________________________
# CODE

# Glib Menu
execute if score menu.refresh glib.data matches 10.. run scoreboard players set menu.refresh glib.data 0
scoreboard players add menu.refresh glib.data 1
execute unless score menu.rules.commandBlockOutput glib.data matches 1 if score menu.refresh glib.data matches 1 as @a[tag=glib.menu] run function glib_core:menu/main
execute if score menu.rules.commandBlockOutput glib.data matches 1 as @a[tag=glib.menu] run function glib_core:menu/main

# Cache
function glib:utils/cache/cache_loop

# Loop Schedule
execute as @e[tag=Glib_Cache_Head] at @s run function glib_child:core/utils/schedule/loop_schedule

# Debug Recorder
execute as @a[tag=glib.debug.stick] run function glib_core:menu/debug/debug_stick
execute as @a[tag=glib.debug,tag=glib.debug.global.display_tick] run function glib:core/debug/display_tick
execute as @a[tag=glib.debug,tag=glib.debug.entity.target_entity_manager,limit=1] at @s run function glib_core:menu/debug/entity/target_entity_manager

# Debug Id
scoreboard players add @e glib.debug.id 0
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players add debug.id glib.data 1
execute as @e[scores={glib.debug.id=0},limit=1] run scoreboard players operation @s glib.debug.id = debug.id glib.data
