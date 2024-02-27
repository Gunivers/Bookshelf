# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/???? (1.14)
# Last modification: 24/08/2023 (23w32a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/biome.html#get-temperature
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score $biome.get_temperature bs.out run function #bs.biome:get_base_temperature

execute store result score #biome.variation bs.data run data get entity @s Pos[1]
scoreboard players remove #biome.variation bs.data 80
execute if score #biome.variation bs.data matches 1.. run scoreboard players operation #biome.variation bs.data *= 125000 bs.const
execute if score #biome.variation bs.data matches 1.. run scoreboard players operation $biome.get_temperature bs.out -= #biome.variation bs.data
return run scoreboard players get $biome.get_temperature bs.out
