# NAME: Select Jukebox
# PATH: bs.core:cache/select_jukebox

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the jukebox slot in the cache module by teleporting the Armor Stand with the bs.cacheHead tag at the jukebox position. The jukebox as a modifiable item within .

# CODE:
execute at @e[tag=bs.cacheSource] run tp @e[tag=bs.cacheHead] ~1 ~ ~-2
