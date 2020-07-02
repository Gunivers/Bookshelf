# NAME: Select Shulker Box
# PATH: glib:core/cache/select_shulker_box

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the shulker box slot in the cache module by teleporting the Armor Stand with the Glib_Cache_Head tag at the shulker box position.

# CODE:
execute at @e[tag=Glib_Cache_Source] run tp @e[tag=Glib_Cache_Head] ~ ~ ~-1
