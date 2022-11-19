# NAME: Select Sign
# PATH: bs.core:cache/select_sign

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the sign slot in the cache module by teleporting the Armor Stand with the bs.cacheHead tag at the sign position.

# CODE:
execute at @e[tag=bs.cacheSource] run tp @e[tag=bs.cacheHead] ~1 ~ ~-1
