# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 22/04/2024 (1.20.5)
# Last modification: 22/04/2024 (1.20.5)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/biome.html#get-biome
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players set #biome.id bs.data 0
execute if biome ~ ~ ~ #bs.biome:type/group_1 run scoreboard players add #biome.id bs.data 1
execute if biome ~ ~ ~ #bs.biome:type/group_2 run scoreboard players add #biome.id bs.data 2
execute if biome ~ ~ ~ #bs.biome:type/group_4 run scoreboard players add #biome.id bs.data 4
execute if biome ~ ~ ~ #bs.biome:type/group_8 run scoreboard players add #biome.id bs.data 8
execute if biome ~ ~ ~ #bs.biome:type/group_16 run scoreboard players add #biome.id bs.data 16
execute if biome ~ ~ ~ #bs.biome:type/group_32 run scoreboard players add #biome.id bs.data 32
execute if biome ~ ~ ~ #bs.biome:type/group_64 run scoreboard players add #biome.id bs.data 64

execute store result storage bs:ctx y short 1 run scoreboard players remove #biome.id bs.data 1
execute unless score #biome.id bs.data matches -1 run function bs.biome:get/biome/lookup with storage bs:ctx
