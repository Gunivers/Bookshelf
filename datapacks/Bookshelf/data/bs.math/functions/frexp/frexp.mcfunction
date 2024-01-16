# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.2
# Created: 02/09/2023 (23w33a)
# Last modification: 17/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#float-radix
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #math.frexp bs.data run data get storage bs:in math.frexp.value
execute unless score #math.frexp bs.data matches 0 run function bs.math:frexp/e_pos
execute if score #math.frexp bs.data matches 0 run function bs.math:frexp/e_neg
