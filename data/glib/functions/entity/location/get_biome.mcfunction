#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet/Oromis
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: glib:entity/location/get_biome
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: <true/false/global>
# Note: This system works automatically thanks to advancements. It detects the biome where the player (only) are and assign an id to each biome. You can find the list of id in /banks/list/Biomes. To disable this system, delete "biome" folder.

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Biome dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
