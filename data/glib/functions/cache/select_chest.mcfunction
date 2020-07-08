# NAME: Select Chest
# PATH: glib:core/cache/select_chest

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the chest slot in the cache module by teleporting the Armor Stand with the glib.cacheHead tag at the chest position.

# CODE:
execute at @e[tag=glib.cacheSource] run tp @e[tag=glib.cacheHead] ~ ~ ~-2
