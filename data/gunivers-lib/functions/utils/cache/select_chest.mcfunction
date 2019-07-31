# NAME: Select Chest
# PATH: gunivers-lib:utils/cache/select_chest

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the chest slot in the cache module by teleporting the Armor Stand with the HeadGlibCache tag at the chest position. 

# CODE:
execute at @e[tag=ASGlibCache] run tp @e[tag=HeadGlibCache] ~ ~ ~2