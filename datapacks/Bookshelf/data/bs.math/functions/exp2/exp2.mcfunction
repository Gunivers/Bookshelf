# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 31/01/2024 (1.20.4)
# Last modification: 31/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#exponential
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #math.ldexp.e bs.data store result score #math.exp2.x bs.data run data get storage bs:in math.exp2.x 16777216
function bs.math:exp2/run
data modify storage bs:out math.exp2 set from storage bs:ctx x
