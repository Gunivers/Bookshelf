# NAME: Select Shulker Box
# PATH: gunivers-lib:core/cache/select_shulker_box

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the shulker box slot in the cache module by teleporting the Armor Stand with the HeadGlibCache tag at the shulker box position. 

# CODE:
execute at @e[tag=ASGlibCache] run tp @e[tag=HeadGlibCache] ~ ~ ~1