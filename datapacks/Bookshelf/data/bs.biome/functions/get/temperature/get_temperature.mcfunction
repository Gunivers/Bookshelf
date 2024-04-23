# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/???? (1.14)
# Last modification: 22/04/2024 (1.20.5)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/biome.html#get-temperature
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

function #bs.biome:get_biome
execute store result score #biome.temperature bs.data run data get storage bs:out biome.temperature 100000000

execute as B5-0-0-0-1 run function bs.biome:get/temperature/variation
execute if score #biome.variation bs.data matches 1.. run scoreboard players operation #biome.variation bs.data *= 125000 bs.const
execute if score #biome.variation bs.data matches 1.. run scoreboard players operation #biome.temperature bs.data -= #biome.variation bs.data
execute store result storage bs:ctx y double .00000001 run scoreboard players get #biome.temperature bs.data

$return run execute store result score $biome.get_temperature bs.out run data get storage bs:ctx y $(scale)
