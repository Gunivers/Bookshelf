#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet/Oromis
# Contributors:
# MC Version: 1.16
# Last check: 1.16

# Original path: glib:location/get_biome
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: true
# Note: Detect the biome where the entity is and assign an id to each biome. You can find the list of id in https://test.gunivers.net/projects/gunivers-lib/wiki/Biome_ID.

#__________________________________________________
# PARAMETERS

# Output: @s glib.res0 (score): The Biome ID

#__________________________________________________
# CODE

execute if predicate glib:biome/get/badlands run scoreboard players set @s glib.res0 0
execute if predicate glib:biome/get/badlands_plateau run scoreboard players set @s glib.res0 1
execute if predicate glib:biome/get/bamboo_jungle run scoreboard players set @s glib.res0 2
execute if predicate glib:biome/get/bamboo_jungle_hills run scoreboard players set @s glib.res0 3
execute if predicate glib:biome/get/basalt_deltas run scoreboard players set @s glib.res0 4
execute if predicate glib:biome/get/beach run scoreboard players set @s glib.res0 5
execute if predicate glib:biome/get/birch_forest run scoreboard players set @s glib.res0 6
execute if predicate glib:biome/get/birch_forest_hills run scoreboard players set @s glib.res0 7
execute if predicate glib:biome/get/cold_ocean run scoreboard players set @s glib.res0 8
execute if predicate glib:biome/get/crimson_forest run scoreboard players set @s glib.res0 9
execute if predicate glib:biome/get/dark_forest run scoreboard players set @s glib.res0 10
execute if predicate glib:biome/get/dark_forest_hills run scoreboard players set @s glib.res0 11
execute if predicate glib:biome/get/deep_cold_ocean run scoreboard players set @s glib.res0 12
execute if predicate glib:biome/get/deep_frozen_ocean run scoreboard players set @s glib.res0 13
execute if predicate glib:biome/get/deep_lukewarm_ocean run scoreboard players set @s glib.res0 14
execute if predicate glib:biome/get/deep_ocean run scoreboard players set @s glib.res0 15
execute if predicate glib:biome/get/deep_warm_ocean run scoreboard players set @s glib.res0 16
execute if predicate glib:biome/get/desert run scoreboard players set @s glib.res0 17
execute if predicate glib:biome/get/desert_hills run scoreboard players set @s glib.res0 18
execute if predicate glib:biome/get/desert_lakes run scoreboard players set @s glib.res0 19
execute if predicate glib:biome/get/end_barrens run scoreboard players set @s glib.res0 20
execute if predicate glib:biome/get/end_highlands run scoreboard players set @s glib.res0 21
execute if predicate glib:biome/get/end_midlands run scoreboard players set @s glib.res0 22
execute if predicate glib:biome/get/eroded_badlands run scoreboard players set @s glib.res0 23
execute if predicate glib:biome/get/flower_forest run scoreboard players set @s glib.res0 24
execute if predicate glib:biome/get/forest run scoreboard players set @s glib.res0 25
execute if predicate glib:biome/get/frozen_ocean run scoreboard players set @s glib.res0 26
execute if predicate glib:biome/get/frozen_river run scoreboard players set @s glib.res0 27
execute if predicate glib:biome/get/giant_spruce_taiga run scoreboard players set @s glib.res0 28
execute if predicate glib:biome/get/giant_spruce_taiga_hills run scoreboard players set @s glib.res0 29
execute if predicate glib:biome/get/giant_tree_taiga run scoreboard players set @s glib.res0 30
execute if predicate glib:biome/get/giant_tree_taiga_hills run scoreboard players set @s glib.res0 31
execute if predicate glib:biome/get/gravelly_mountains run scoreboard players set @s glib.res0 32
execute if predicate glib:biome/get/ice_spikes run scoreboard players set @s glib.res0 33
execute if predicate glib:biome/get/jungle run scoreboard players set @s glib.res0 34
execute if predicate glib:biome/get/jungle_edge run scoreboard players set @s glib.res0 35
execute if predicate glib:biome/get/jungle_hills run scoreboard players set @s glib.res0 36
execute if predicate glib:biome/get/lukewarm_ocean run scoreboard players set @s glib.res0 37
execute if predicate glib:biome/get/modified_badlands_plateau run scoreboard players set @s glib.res0 38
execute if predicate glib:biome/get/modified_gravelly_mountains run scoreboard players set @s glib.res0 39
execute if predicate glib:biome/get/modified_jungle run scoreboard players set @s glib.res0 40
execute if predicate glib:biome/get/modified_jungle_edge run scoreboard players set @s glib.res0 41
execute if predicate glib:biome/get/modified_wooded_badlands_plateau run scoreboard players set @s glib.res0 42
execute if predicate glib:biome/get/mountain_edge run scoreboard players set @s glib.res0 43
execute if predicate glib:biome/get/mountains run scoreboard players set @s glib.res0 44
execute if predicate glib:biome/get/mushroom_field_shore run scoreboard players set @s glib.res0 45
execute if predicate glib:biome/get/mushroom_fields run scoreboard players set @s glib.res0 46
execute if predicate glib:biome/get/nether_wastes run scoreboard players set @s glib.res0 47
execute if predicate glib:biome/get/ocean run scoreboard players set @s glib.res0 48
execute if predicate glib:biome/get/plains run scoreboard players set @s glib.res0 49
execute if predicate glib:biome/get/river run scoreboard players set @s glib.res0 50
execute if predicate glib:biome/get/savanna run scoreboard players set @s glib.res0 51
execute if predicate glib:biome/get/savanna_plateau run scoreboard players set @s glib.res0 52
execute if predicate glib:biome/get/shattered_savanna run scoreboard players set @s glib.res0 53
execute if predicate glib:biome/get/shattered_savanna_plateau run scoreboard players set @s glib.res0 54
execute if predicate glib:biome/get/small_end_islands run scoreboard players set @s glib.res0 55
execute if predicate glib:biome/get/snowy_beach run scoreboard players set @s glib.res0 56
execute if predicate glib:biome/get/snowy_mountains run scoreboard players set @s glib.res0 57
execute if predicate glib:biome/get/snowy_taiga run scoreboard players set @s glib.res0 58
execute if predicate glib:biome/get/snowy_taiga_hills run scoreboard players set @s glib.res0 59
execute if predicate glib:biome/get/snowy_taiga_mountains run scoreboard players set @s glib.res0 60
execute if predicate glib:biome/get/snowy_tundra run scoreboard players set @s glib.res0 61
execute if predicate glib:biome/get/soul_sand_valley run scoreboard players set @s glib.res0 62
execute if predicate glib:biome/get/stone_shore run scoreboard players set @s glib.res0 63
execute if predicate glib:biome/get/sunflower_plains run scoreboard players set @s glib.res0 64
execute if predicate glib:biome/get/swamp run scoreboard players set @s glib.res0 65
execute if predicate glib:biome/get/swamp_hills run scoreboard players set @s glib.res0 66
execute if predicate glib:biome/get/taiga run scoreboard players set @s glib.res0 67
execute if predicate glib:biome/get/taiga_hills run scoreboard players set @s glib.res0 68
execute if predicate glib:biome/get/taiga_mountains run scoreboard players set @s glib.res0 69
execute if predicate glib:biome/get/tall_birch_forest run scoreboard players set @s glib.res0 70
execute if predicate glib:biome/get/tall_birch_hills run scoreboard players set @s glib.res0 71
execute if predicate glib:biome/get/the_end run scoreboard players set @s glib.res0 72
execute if predicate glib:biome/get/the_void run scoreboard players set @s glib.res0 73
execute if predicate glib:biome/get/warm_ocean run scoreboard players set @s glib.res0 74
execute if predicate glib:biome/get/warped_forest run scoreboard players set @s glib.res0 75
execute if predicate glib:biome/get/wooded_badlands_plateau run scoreboard players set @s glib.res0 76
execute if predicate glib:biome/get/wooded_hills run scoreboard players set @s glib.res0 77
execute if predicate glib:biome/get/wooded_mountains run scoreboard players set @s glib.res0 78
