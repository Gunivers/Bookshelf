#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: bs.biome:can_snow
# Parallelizable: true
# Note: Allow to know if can rain at the position of the player. Return 1 if possible, else 0.

#__________________________________________________
# PARAMETERS

# Input: @s bs.temperature (score)
# Output: @s bs.canRain (tag)

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s bs.temperature matches 15000000..95000000 run tag @s add bs.canRain
execute if score @s bs.temperature matches 100000000.. run tag @s remove bs.canRain
execute if score @s bs.temperature matches 14000000.. run tag @s remove bs.canRain
