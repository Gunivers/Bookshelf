#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet/Oromis
# Contributors:
# MC Version: 1.16
# Last check: 1.16

# Original path: bs.biome/get
# Documentation: https://bs-core.readthedocs.io//Functions#Biome
# Parallelizable: true
# Note: Detect the biome where the command is executed and assign an id to each biome. You can find the list of id in https://test.gunivers.net/projects/gunivers-lib/wiki/Biome_ID.

#__________________________________________________
# PARAMETERS

# Output: biome bs.biome (score): The Biome ID

#__________________________________________________
# CODE

execute if predicate bs.biome/get/badlands run scoreboard players set @s bs.biome 0
execute if predicate bs.biome/get/badlands_plateau run scoreboard players set @s bs.biome 1
execute if predicate bs.biome/get/bamboo_jungle run scoreboard players set @s bs.biome 2
execute if predicate bs.biome/get/bamboo_jungle_hills run scoreboard players set @s bs.biome 3
execute if predicate bs.biome/get/basalt_deltas run scoreboard players set @s bs.biome 4
execute if predicate bs.biome/get/beach run scoreboard players set @s bs.biome 5
execute if predicate bs.biome/get/birch_forest run scoreboard players set @s bs.biome 6
execute if predicate bs.biome/get/birch_forest_hills run scoreboard players set @s bs.biome 7
execute if predicate bs.biome/get/cold_ocean run scoreboard players set @s bs.biome 8
execute if predicate bs.biome/get/crimson_forest run scoreboard players set @s bs.biome 9
execute if predicate bs.biome/get/dark_forest run scoreboard players set @s bs.biome 10
execute if predicate bs.biome/get/dark_forest_hills run scoreboard players set @s bs.biome 11
execute if predicate bs.biome/get/deep_cold_ocean run scoreboard players set @s bs.biome 12
execute if predicate bs.biome/get/deep_frozen_ocean run scoreboard players set @s bs.biome 13
execute if predicate bs.biome/get/deep_lukewarm_ocean run scoreboard players set @s bs.biome 14
execute if predicate bs.biome/get/deep_ocean run scoreboard players set @s bs.biome 15
execute if predicate bs.biome/get/deep_warm_ocean run scoreboard players set @s bs.biome 16
execute if predicate bs.biome/get/desert run scoreboard players set @s bs.biome 17
execute if predicate bs.biome/get/desert_hills run scoreboard players set @s bs.biome 18
execute if predicate bs.biome/get/desert_lakes run scoreboard players set @s bs.biome 19
execute if predicate bs.biome/get/end_barrens run scoreboard players set @s bs.biome 20
execute if predicate bs.biome/get/end_highlands run scoreboard players set @s bs.biome 21
execute if predicate bs.biome/get/end_midlands run scoreboard players set @s bs.biome 22
execute if predicate bs.biome/get/eroded_badlands run scoreboard players set @s bs.biome 23
execute if predicate bs.biome/get/flower_forest run scoreboard players set @s bs.biome 24
execute if predicate bs.biome/get/forest run scoreboard players set @s bs.biome 25
execute if predicate bs.biome/get/frozen_ocean run scoreboard players set @s bs.biome 26
execute if predicate bs.biome/get/frozen_river run scoreboard players set @s bs.biome 27
execute if predicate bs.biome/get/giant_spruce_taiga run scoreboard players set @s bs.biome 28
execute if predicate bs.biome/get/giant_spruce_taiga_hills run scoreboard players set @s bs.biome 29
execute if predicate bs.biome/get/giant_tree_taiga run scoreboard players set @s bs.biome 30
execute if predicate bs.biome/get/giant_tree_taiga_hills run scoreboard players set @s bs.biome 31
execute if predicate bs.biome/get/gravelly_mountains run scoreboard players set @s bs.biome 32
execute if predicate bs.biome/get/ice_spikes run scoreboard players set @s bs.biome 33
execute if predicate bs.biome/get/jungle run scoreboard players set @s bs.biome 34
execute if predicate bs.biome/get/jungle_edge run scoreboard players set @s bs.biome 35
execute if predicate bs.biome/get/jungle_hills run scoreboard players set @s bs.biome 36
execute if predicate bs.biome/get/lukewarm_ocean run scoreboard players set @s bs.biome 37
execute if predicate bs.biome/get/modified_badlands_plateau run scoreboard players set @s bs.biome 38
execute if predicate bs.biome/get/modified_gravelly_mountains run scoreboard players set @s bs.biome 39
execute if predicate bs.biome/get/modified_jungle run scoreboard players set @s bs.biome 40
execute if predicate bs.biome/get/modified_jungle_edge run scoreboard players set @s bs.biome 41
execute if predicate bs.biome/get/modified_wooded_badlands_plateau run scoreboard players set @s bs.biome 42
execute if predicate bs.biome/get/mountain_edge run scoreboard players set @s bs.biome 43
execute if predicate bs.biome/get/mountains run scoreboard players set @s bs.biome 44
execute if predicate bs.biome/get/mushroom_field_shore run scoreboard players set @s bs.biome 45
execute if predicate bs.biome/get/mushroom_fields run scoreboard players set @s bs.biome 46
execute if predicate bs.biome/get/nether_wastes run scoreboard players set @s bs.biome 47
execute if predicate bs.biome/get/ocean run scoreboard players set @s bs.biome 48
execute if predicate bs.biome/get/plains run scoreboard players set @s bs.biome 49
execute if predicate bs.biome/get/river run scoreboard players set @s bs.biome 50
execute if predicate bs.biome/get/savanna run scoreboard players set @s bs.biome 51
execute if predicate bs.biome/get/savanna_plateau run scoreboard players set @s bs.biome 52
execute if predicate bs.biome/get/shattered_savanna run scoreboard players set @s bs.biome 53
execute if predicate bs.biome/get/shattered_savanna_plateau run scoreboard players set @s bs.biome 54
execute if predicate bs.biome/get/small_end_islands run scoreboard players set @s bs.biome 55
execute if predicate bs.biome/get/snowy_beach run scoreboard players set @s bs.biome 56
execute if predicate bs.biome/get/snowy_mountains run scoreboard players set @s bs.biome 57
execute if predicate bs.biome/get/snowy_taiga run scoreboard players set @s bs.biome 58
execute if predicate bs.biome/get/snowy_taiga_hills run scoreboard players set @s bs.biome 59
execute if predicate bs.biome/get/snowy_taiga_mountains run scoreboard players set @s bs.biome 60
execute if predicate bs.biome/get/snowy_tundra run scoreboard players set @s bs.biome 61
execute if predicate bs.biome/get/soul_sand_valley run scoreboard players set @s bs.biome 62
execute if predicate bs.biome/get/stone_shore run scoreboard players set @s bs.biome 63
execute if predicate bs.biome/get/sunflower_plains run scoreboard players set @s bs.biome 64
execute if predicate bs.biome/get/swamp run scoreboard players set @s bs.biome 65
execute if predicate bs.biome/get/swamp_hills run scoreboard players set @s bs.biome 66
execute if predicate bs.biome/get/taiga run scoreboard players set @s bs.biome 67
execute if predicate bs.biome/get/taiga_hills run scoreboard players set @s bs.biome 68
execute if predicate bs.biome/get/taiga_mountains run scoreboard players set @s bs.biome 69
execute if predicate bs.biome/get/tall_birch_forest run scoreboard players set @s bs.biome 70
execute if predicate bs.biome/get/tall_birch_hills run scoreboard players set @s bs.biome 71
execute if predicate bs.biome/get/the_end run scoreboard players set @s bs.biome 72
execute if predicate bs.biome/get/the_void run scoreboard players set @s bs.biome 73
execute if predicate bs.biome/get/warm_ocean run scoreboard players set @s bs.biome 74
execute if predicate bs.biome/get/warped_forest run scoreboard players set @s bs.biome 75
execute if predicate bs.biome/get/wooded_badlands_plateau run scoreboard players set @s bs.biome 76
execute if predicate bs.biome/get/wooded_hills run scoreboard players set @s bs.biome 77
execute if predicate bs.biome/get/wooded_mountains run scoreboard players set @s bs.biome 78
