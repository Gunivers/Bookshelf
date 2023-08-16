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

execute unless predicate bs.biome:has_precipitation run return 0

execute store result score #biome.temperature bs.var run function #bs.biome:get_temperature
execute if score #biome.temperature bs.var matches 15000000.. run return 1

return 0
