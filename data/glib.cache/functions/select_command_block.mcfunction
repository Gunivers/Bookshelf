# NAME: Select Command Block
# PATH: glib.core:cache/select_command_block

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the command block slot in the cache module by teleporting the Armor Stand with the glib.cacheHead tag at the command block position.

# CODE:
execute at @e[tag=glib.cacheSource] run tp @e[tag=glib.cacheHead] ~1 ~ ~
