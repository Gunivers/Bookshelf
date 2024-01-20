# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 20/01/2024 (1.20.4)
# Last modification: 20/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#convert-to-rgb
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value '$(color)'
data modify storage bs:ctx x set string storage bs:ctx _ 1 3
data modify storage bs:ctx y set string storage bs:ctx _ 3 5
data modify storage bs:ctx z set string storage bs:ctx _ 5 7

return run function bs.color:hex_to_rgb/convert_hexes with storage bs:ctx
