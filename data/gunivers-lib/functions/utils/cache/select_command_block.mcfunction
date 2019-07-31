# NAME: Select Command Block
# PATH: gunivers-lib:utils/cache/select_command_block

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the command block slot in the cache module by teleporting the Armor Stand with the HeadGlibCache tag at the command block position. 

# CODE:
execute at @e[tag=ASGlibCache] run tp @e[tag=HeadGlibCache] ~-1 ~ ~