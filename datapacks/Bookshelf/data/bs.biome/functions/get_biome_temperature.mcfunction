#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.1
# Last check: 1.16.2

# Original path: bs.biome:get_biome_temperature
# Parallelizable: true
# Note: Allow to get the temperature at the entity location biome at y = 62 (sea level).
#		The format of the result is "temperature * 10^8", based on the biome data values.

#__________________________________________________
# PARAMETERS

# Output: bs.biome.temp (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add bs.biome.temp dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Temperature","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if predicate bs.biome/get/badlands run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/badlands_plateau run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/bamboo_jungle run scoreboard players set @s bs.biome.temp 95000000
execute if predicate bs.biome/get/bamboo_jungle_hills run scoreboard players set @s bs.biome.temp 95000000
execute if predicate bs.biome/get/basalt_deltas run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/beach run scoreboard players set @s bs.biome.temp 80000000
execute if predicate bs.biome/get/birch_forest run scoreboard players set @s bs.biome.temp 60000000
execute if predicate bs.biome/get/birch_forest_hills run scoreboard players set @s bs.biome.temp 60000000
execute if predicate bs.biome/get/cold_ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/crimson_forest run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/dark_forest run scoreboard players set @s bs.biome.temp 70000000
execute if predicate bs.biome/get/dark_forest_hills run scoreboard players set @s bs.biome.temp 70000000
execute if predicate bs.biome/get/deep_cold_ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/deep_frozen_ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/deep_lukewarm_ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/deep_ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/deep_warm_ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/desert run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/desert_hills run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/desert_lakes run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/end_barrens run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/end_highlands run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/end_midlands run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/eroded_badlands run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/flower_forest run scoreboard players set @s bs.biome.temp 70000000
execute if predicate bs.biome/get/forest run scoreboard players set @s bs.biome.temp 70000000
execute if predicate bs.biome/get/frozen_ocean run scoreboard players set @s bs.biome.temp 0
execute if predicate bs.biome/get/frozen_river run scoreboard players set @s bs.biome.temp 0
execute if predicate bs.biome/get/giant_spruce_taiga run scoreboard players set @s bs.biome.temp 25000000
execute if predicate bs.biome/get/giant_spruce_taiga_hills run scoreboard players set @s bs.biome.temp 25000000
execute if predicate bs.biome/get/giant_tree_taiga run scoreboard players set @s bs.biome.temp 30000000
execute if predicate bs.biome/get/giant_tree_taiga_hills run scoreboard players set @s bs.biome.temp 30000000
execute if predicate bs.biome/get/gravelly_mountains run scoreboard players set @s bs.biome.temp 20000000
execute if predicate bs.biome/get/ice_spikes run scoreboard players set @s bs.biome.temp 0
execute if predicate bs.biome/get/jungle run scoreboard players set @s bs.biome.temp 95000000
execute if predicate bs.biome/get/jungle_edge run scoreboard players set @s bs.biome.temp 95000000
execute if predicate bs.biome/get/jungle_hills run scoreboard players set @s bs.biome.temp 95000000
execute if predicate bs.biome/get/lukewarm_ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/modified_badlands_plateau run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/modified_gravelly_mountains run scoreboard players set @s bs.biome.temp 20000000
execute if predicate bs.biome/get/modified_jungle run scoreboard players set @s bs.biome.temp 95000000
execute if predicate bs.biome/get/modified_jungle_edge run scoreboard players set @s bs.biome.temp 95000000
execute if predicate bs.biome/get/modified_wooded_badlands_plateau run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/mountains run scoreboard players set @s bs.biome.temp 20000000
execute if predicate bs.biome/get/mountain_edge run scoreboard players set @s bs.biome.temp 20000000
execute if predicate bs.biome/get/mushroom_fields run scoreboard players set @s bs.biome.temp 90000000
execute if predicate bs.biome/get/mushroom_field_shore run scoreboard players set @s bs.biome.temp 90000000
execute if predicate bs.biome/get/nether_wastes run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/plains run scoreboard players set @s bs.biome.temp 80000000
execute if predicate bs.biome/get/river run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/savanna run scoreboard players set @s bs.biome.temp 120000000
execute if predicate bs.biome/get/savanna_plateau run scoreboard players set @s bs.biome.temp 100000000
execute if predicate bs.biome/get/shattered_savanna run scoreboard players set @s bs.biome.temp 110000000
execute if predicate bs.biome/get/shattered_savanna_plateau run scoreboard players set @s bs.biome.temp 100000000
execute if predicate bs.biome/get/small_end_islands run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/snowy_beach run scoreboard players set @s bs.biome.temp 5000000
execute if predicate bs.biome/get/snowy_mountains run scoreboard players set @s bs.biome.temp 0
execute if predicate bs.biome/get/snowy_taiga run scoreboard players set @s bs.biome.temp -50000000
execute if predicate bs.biome/get/snowy_taiga_hills run scoreboard players set @s bs.biome.temp -50000000
execute if predicate bs.biome/get/snowy_taiga_mountains run scoreboard players set @s bs.biome.temp -50000000
execute if predicate bs.biome/get/snowy_tundra run scoreboard players set @s bs.biome.temp 0
execute if predicate bs.biome/get/soul_sand_valley run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/stone_shore run scoreboard players set @s bs.biome.temp 20000000
execute if predicate bs.biome/get/sunflower_plains run scoreboard players set @s bs.biome.temp 80000000
execute if predicate bs.biome/get/swamp run scoreboard players set @s bs.biome.temp 80000000
execute if predicate bs.biome/get/swamp_hills run scoreboard players set @s bs.biome.temp 80000000
execute if predicate bs.biome/get/taiga run scoreboard players set @s bs.biome.temp 25000000
execute if predicate bs.biome/get/taiga_hills run scoreboard players set @s bs.biome.temp 25000000
execute if predicate bs.biome/get/taiga_mountains run scoreboard players set @s bs.biome.temp 25000000
execute if predicate bs.biome/get/tall_birch_forest run scoreboard players set @s bs.biome.temp 60000000
execute if predicate bs.biome/get/tall_birch_hills run scoreboard players set @s bs.biome.temp 60000000
execute if predicate bs.biome/get/the_end run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/the_void run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/warm_ocean run scoreboard players set @s bs.biome.temp 50000000
execute if predicate bs.biome/get/warped_forest run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/wooded_badlands_plateau run scoreboard players set @s bs.biome.temp 200000000
execute if predicate bs.biome/get/wooded_hills run scoreboard players set @s bs.biome.temp 70000000
execute if predicate bs.biome/get/wooded_mountains run scoreboard players set @s bs.biome.temp 20000000
