#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.1
# Last check: 1.16.2

# Original path: glib.biome:get_biome_temperature
# Parallelizable: true
# Note: Allow to get the temperature at the entity location biome at y = 62 (sea level).
#		The format of the result is "temperature * 10^8", based on the biome data values.

#__________________________________________________
# PARAMETERS

# Output: glib.temperature (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.temperature dummy [{"text":"GLib ","color":"gold"},{"text":"Temperature","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if predicate glib.biome/get/badlands run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/badlands_plateau run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/bamboo_jungle run scoreboard players set @s glib.temperature 95000000
execute if predicate glib.biome/get/bamboo_jungle_hills run scoreboard players set @s glib.temperature 95000000
execute if predicate glib.biome/get/basalt_deltas run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/beach run scoreboard players set @s glib.temperature 80000000
execute if predicate glib.biome/get/birch_forest run scoreboard players set @s glib.temperature 60000000
execute if predicate glib.biome/get/birch_forest_hills run scoreboard players set @s glib.temperature 60000000
execute if predicate glib.biome/get/cold_ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/crimson_forest run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/dark_forest run scoreboard players set @s glib.temperature 70000000
execute if predicate glib.biome/get/dark_forest_hills run scoreboard players set @s glib.temperature 70000000
execute if predicate glib.biome/get/deep_cold_ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/deep_frozen_ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/deep_lukewarm_ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/deep_ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/deep_warm_ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/desert run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/desert_hills run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/desert_lakes run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/end_barrens run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/end_highlands run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/end_midlands run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/eroded_badlands run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/flower_forest run scoreboard players set @s glib.temperature 70000000
execute if predicate glib.biome/get/forest run scoreboard players set @s glib.temperature 70000000
execute if predicate glib.biome/get/frozen_ocean run scoreboard players set @s glib.temperature 0
execute if predicate glib.biome/get/frozen_river run scoreboard players set @s glib.temperature 0
execute if predicate glib.biome/get/giant_spruce_taiga run scoreboard players set @s glib.temperature 25000000
execute if predicate glib.biome/get/giant_spruce_taiga_hills run scoreboard players set @s glib.temperature 25000000
execute if predicate glib.biome/get/giant_tree_taiga run scoreboard players set @s glib.temperature 30000000
execute if predicate glib.biome/get/giant_tree_taiga_hills run scoreboard players set @s glib.temperature 30000000
execute if predicate glib.biome/get/gravelly_mountains run scoreboard players set @s glib.temperature 20000000
execute if predicate glib.biome/get/ice_spikes run scoreboard players set @s glib.temperature 0
execute if predicate glib.biome/get/jungle run scoreboard players set @s glib.temperature 95000000
execute if predicate glib.biome/get/jungle_edge run scoreboard players set @s glib.temperature 95000000
execute if predicate glib.biome/get/jungle_hills run scoreboard players set @s glib.temperature 95000000
execute if predicate glib.biome/get/lukewarm_ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/modified_badlands_plateau run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/modified_gravelly_mountains run scoreboard players set @s glib.temperature 20000000
execute if predicate glib.biome/get/modified_jungle run scoreboard players set @s glib.temperature 95000000
execute if predicate glib.biome/get/modified_jungle_edge run scoreboard players set @s glib.temperature 95000000
execute if predicate glib.biome/get/modified_wooded_badlands_plateau run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/mountains run scoreboard players set @s glib.temperature 20000000
execute if predicate glib.biome/get/mountain_edge run scoreboard players set @s glib.temperature 20000000
execute if predicate glib.biome/get/mushroom_fields run scoreboard players set @s glib.temperature 90000000
execute if predicate glib.biome/get/mushroom_field_shore run scoreboard players set @s glib.temperature 90000000
execute if predicate glib.biome/get/nether_wastes run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/plains run scoreboard players set @s glib.temperature 80000000
execute if predicate glib.biome/get/river run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/savanna run scoreboard players set @s glib.temperature 120000000
execute if predicate glib.biome/get/savanna_plateau run scoreboard players set @s glib.temperature 100000000
execute if predicate glib.biome/get/shattered_savanna run scoreboard players set @s glib.temperature 110000000
execute if predicate glib.biome/get/shattered_savanna_plateau run scoreboard players set @s glib.temperature 100000000
execute if predicate glib.biome/get/small_end_islands run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/snowy_beach run scoreboard players set @s glib.temperature 5000000
execute if predicate glib.biome/get/snowy_mountains run scoreboard players set @s glib.temperature 0
execute if predicate glib.biome/get/snowy_taiga run scoreboard players set @s glib.temperature -50000000
execute if predicate glib.biome/get/snowy_taiga_hills run scoreboard players set @s glib.temperature -50000000
execute if predicate glib.biome/get/snowy_taiga_mountains run scoreboard players set @s glib.temperature -50000000
execute if predicate glib.biome/get/snowy_tundra run scoreboard players set @s glib.temperature 0
execute if predicate glib.biome/get/soul_sand_valley run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/stone_shore run scoreboard players set @s glib.temperature 20000000
execute if predicate glib.biome/get/sunflower_plains run scoreboard players set @s glib.temperature 80000000
execute if predicate glib.biome/get/swamp run scoreboard players set @s glib.temperature 80000000
execute if predicate glib.biome/get/swamp_hills run scoreboard players set @s glib.temperature 80000000
execute if predicate glib.biome/get/taiga run scoreboard players set @s glib.temperature 25000000
execute if predicate glib.biome/get/taiga_hills run scoreboard players set @s glib.temperature 25000000
execute if predicate glib.biome/get/taiga_mountains run scoreboard players set @s glib.temperature 25000000
execute if predicate glib.biome/get/tall_birch_forest run scoreboard players set @s glib.temperature 60000000
execute if predicate glib.biome/get/tall_birch_hills run scoreboard players set @s glib.temperature 60000000
execute if predicate glib.biome/get/the_end run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/the_void run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/warm_ocean run scoreboard players set @s glib.temperature 50000000
execute if predicate glib.biome/get/warped_forest run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/wooded_badlands_plateau run scoreboard players set @s glib.temperature 200000000
execute if predicate glib.biome/get/wooded_hills run scoreboard players set @s glib.temperature 70000000
execute if predicate glib.biome/get/wooded_mountains run scoreboard players set @s glib.temperature 20000000
