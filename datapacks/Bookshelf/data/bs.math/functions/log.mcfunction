# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, KubbyDev
# Contributors:

# Version: 2.0
# Created: ??/??/2018 (1.13)
# Last modification: 02/09/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#logarithm
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:in math.log2.x set from storage bs:in math.log.x
function #bs.math:log2
execute store result storage bs:out math.log double 0.0000001 run data get storage bs:out math.log2 6931471.805599453
