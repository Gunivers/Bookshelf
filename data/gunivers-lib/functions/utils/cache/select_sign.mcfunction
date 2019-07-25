# NAME: Select Sign
# PATH: gunivers-lib:utils/cache/select_sign

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the sign slot in the cache module by teleporting the Armor Stand with the HeadGlibCache tag at the sign position. 

# CODE:
execute at @e[tag=ASGlibCache] run tp @e[tag=HeadGlibCache] ~1 ~ ~-1