# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 28/01/2024 (1.20.4)
# Last modification: 28/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#float-manipulation
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:ctx x set from storage bs:in math.ldexp.x
execute store result score #math.ldexp.e bs.data run data get storage bs:in math.ldexp.e
function bs.math:ldexp/run
data modify storage bs:out math.ldexp set from storage bs:ctx x
