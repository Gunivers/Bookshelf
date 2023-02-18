# NAME: Select Command Block
# PATH: bs.core:cache/select_command_block

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the command block slot in the cache module by teleporting the Armor Stand with the bs.cacheHead tag at the command block position.

# CODE:
execute at @e[tag=bs.cacheSource] run tp @e[tag=bs.cacheHead] ~1 ~ ~
