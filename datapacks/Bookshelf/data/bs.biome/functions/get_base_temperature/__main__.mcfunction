# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/???? (1.14)
# Last modification: 16/08/2023 (23w32a)

# Documentation: 
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #biome.temperature bs.data run function #bs.biome:get_base_temperature

execute store result score #biome.variation bs.data run data get entity @s Pos[1]
scoreboard players remove #biome.variation bs.data 80
execute if score #biome.variation bs.data matches 1.. run scoreboard players operation #biome.variation bs.data *= 125000 bs.const
execute if score #biome.variation bs.data matches 1.. run scoreboard players operation #biome.temperature bs.data -= #biome.variation bs.data

return run scoreboard players get #biome.temperature bs.data
