

execute as @e[tag=Glib_Cache_Source] at @s run fill ~-1 ~-1 ~-3 ~2 ~2 ~1 air

kill @e[tag=Glib_Cache_Source,type=!player]
kill @e[tag=Glib_Cache_Head,type=!player]

tag @e remove Glib_Creator_system.cache.remove
