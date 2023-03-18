#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.14
# Last check:

# Original path: bs.biome:can_snow
# Parallelizable: true
# Note: Allow to know if can snow at the position of the player. Return 1 if possible, else 0.

#__________________________________________________
# PARAMETERS

# Input: @s bs.biome.temp (score)
# Output: @s bs.biome.CanSnow (tag)

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s bs.biome.temp matches 15000000..95000000 run tag @s remove bs.biome.CanSnow
execute if score @s bs.biome.temp matches 100000000.. run tag @s remove bs.biome.CanSnow
execute if score @s bs.biome.temp matches ..14000000 run tag @s add bs.biome.CanSnow
