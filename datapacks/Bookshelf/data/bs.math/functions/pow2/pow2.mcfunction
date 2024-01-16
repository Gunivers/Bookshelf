# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 05/09/2023 (23w33a)
# Last modification:

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#pow2
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if score $math.pow2.exp bs.in matches 0..7 run return run function bs.math:pow2/range_1
execute if score $math.pow2.exp bs.in matches 8..15 run return run function bs.math:pow2/range_2
execute if score $math.pow2.exp bs.in matches 16..23 run return run function bs.math:pow2/range_3
execute if score $math.pow2.exp bs.in matches 24.. run return run function bs.math:pow2/range_4
