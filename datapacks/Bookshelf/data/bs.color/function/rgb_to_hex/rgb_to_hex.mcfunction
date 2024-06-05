# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/01/2024 (1.20.4)
# Last modification: 20/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#convert-to-hex
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value {rgb:$(color)}

data modify storage bs:ctx x set from storage bs:ctx _.rgb[0]
data modify storage bs:ctx y set from storage bs:ctx _.rgb[1]
data modify storage bs:ctx z set from storage bs:ctx _.rgb[2]

function bs.color:rgb_to_hex/get_hexes with storage bs:ctx
function bs.color:rgb_to_hex/concat_hexes with storage bs:ctx _
