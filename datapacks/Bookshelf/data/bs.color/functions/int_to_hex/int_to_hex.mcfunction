# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/01/2024 (1.20.4)
# Last modification: 20/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#convert-to-hex
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #color.int_to_hex bs.data $(color)

scoreboard players operation #color.int_to_hex.r bs.data = #color.int_to_hex bs.data
scoreboard players operation #color.int_to_hex.r bs.data /= 65536 bs.const
scoreboard players operation #color.int_to_hex.g bs.data = #color.int_to_hex bs.data
scoreboard players operation #color.int_to_hex.g bs.data /= 256 bs.const
scoreboard players operation #color.int_to_hex.b bs.data = #color.int_to_hex bs.data

execute store result storage bs:ctx x int 1 run scoreboard players operation #color.int_to_hex.r bs.data %= 256 bs.const
execute store result storage bs:ctx y int 1 run scoreboard players operation #color.int_to_hex.g bs.data %= 256 bs.const
execute store result storage bs:ctx z int 1 run scoreboard players operation #color.int_to_hex.b bs.data %= 256 bs.const

function bs.color:int_to_hex/get_hexes with storage bs:ctx
function bs.color:int_to_hex/concat_hexes with storage bs:ctx _
