# NAME: Select Sign
# PATH: glib:core/cache/select_sign

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the sign slot in the cache module by teleporting the Armor Stand with the glib.cacheHead tag at the sign position.

# CODE:
execute at @e[tag=glib.cacheSource] run tp @e[tag=glib.cacheHead] ~1 ~ ~-1
