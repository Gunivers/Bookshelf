# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.3
# Created: 02/09/2023 (23w33a)
# Last modification: 30/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#float-manipulation
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:ctx x set from storage bs:in math.frexp.x
function bs.math:frexp/run
execute store result storage bs:out math.frexp.e int 1 run scoreboard players get #math.frexp.e bs.data
data modify storage bs:out math.frexp.x set from storage bs:ctx x
