#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/is_in_cave
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Note: Return 1 if the entity is in a cave, 0 else.

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
execute store result score @s Res if block ~ ~ ~ cave_air
