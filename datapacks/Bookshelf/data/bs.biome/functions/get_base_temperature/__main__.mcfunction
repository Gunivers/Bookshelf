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

execute store result score #biome.temperature bs.var run function #bs.biome:get_base_temperature

execute store result score #biome.variation bs.var run data get entity @s Pos[1]
scoreboard players remove #biome.variation bs.var 80
execute if score #biome.variation bs.var matches 1.. run scoreboard players operation #biome.variation bs.var *= 125000 bs.const
execute if score #biome.variation bs.var matches 1.. run scoreboard players operation #biome.temperature bs.var -= #biome.variation bs.var

return run scoreboard players get #biome.temperature bs.var
