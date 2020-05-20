# NAME: Select Command Block
# PATH: glib:core/cache/select_command_block

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# NOTE: Select the command block slot in the cache module by teleporting the Armor Stand with the Glib_Cache_Head tag at the command block position.

# CODE:
execute at @e[tag=Glib_Cache_Source] run tp @e[tag=Glib_Cache_Head] ~1 ~ ~
