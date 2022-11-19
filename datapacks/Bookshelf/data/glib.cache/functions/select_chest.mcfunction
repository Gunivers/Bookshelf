# NAME: Select Chest
# PATH: bs.core:cache/select_chest

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the chest slot in the cache module by teleporting the Armor Stand with the bs.cacheHead tag at the chest position.

# CODE:
execute at @e[tag=bs.cacheSource] run tp @e[tag=bs.cacheHead] ~ ~ ~-2
