#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/is_in_cave
# Parallelizable: true
# Note: Return 1 if the entity is in a cave, 0 else.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.res0 if block ~ ~ ~ cave_air
