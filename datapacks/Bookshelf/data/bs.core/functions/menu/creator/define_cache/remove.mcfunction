

execute as @e[tag=bs_Cache_Source] at @s run fill ~-1 ~-1 ~-3 ~2 ~2 ~1 air

kill @e[tag=bs_Cache_Source,type=!player]
kill @e[tag=bs_Cache_Head,type=!player]

tag @e remove bs_Creator_system.cache.remove
