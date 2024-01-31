# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.2
# Created: ??/??/2018 (1.13)
# Last modification: 31/01/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#exponential
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #math.ldexp.e bs.data store result score #math.exp2.x bs.data run data get storage bs:in math.exp.x 24204406.323122970759868621826171875
function bs.math:exp2/run
data modify storage bs:out math.exp set from storage bs:ctx x
