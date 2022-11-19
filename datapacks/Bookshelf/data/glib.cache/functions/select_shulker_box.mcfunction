# NAME: Select Shulker Box
# PATH: bs.core:cache/select_shulker_box

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the shulker box slot in the cache module by teleporting the Armor Stand with the bs.cacheHead tag at the shulker box position.

# CODE:
execute at @e[tag=bs.cacheSource] run tp @e[tag=bs.cacheHead] ~ ~ ~-1
