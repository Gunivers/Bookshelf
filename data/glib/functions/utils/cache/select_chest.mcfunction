# NAME: Select Chest
# PATH: glib:core/cache/select_chest

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the chest slot in the cache module by teleporting the Armor Stand with the Glib_Cache_Head tag at the chest position.

# CODE:
execute at @e[tag=Glib_Cache_Source] run tp @e[tag=Glib_Cache_Head] ~ ~ ~-2
say 1
