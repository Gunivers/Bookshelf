# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Ethanout
# Contributors:

# Version: 1.0
# Created: 28/08/2023 (23w31a)
# Last modification: 05/09/2023 (23w31a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#square-root
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# is E >= 64
execute store result score #math.sqrt.check_3 bs.data run data get storage bs:in math.sqrt.value 0.0000000000000000000542101086242752217003726400434970855712890625
# break if negative
execute if score #math.sqrt.check_ bs.data matches ..-1 run return -1
# is E >= 0
execute store result score #math.sqrt.check_2 bs.data run data get storage bs:in math.sqrt.value 1
# is E >= -64
execute store result score #math.sqrt.check_1 bs.data run data get storage bs:in math.sqrt.value 18446744073709551616

execute if score #math.sqrt.check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_64_127
execute if score #math.sqrt.check_3 bs.data matches 0 if score #math.sqrt.check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_0_63
execute if score #math.sqrt.check_2 bs.data matches 0 if score #math.sqrt.check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_-64_-1
execute if score #math.sqrt.check_1 bs.data matches 0 run function bs.math:sqrt/exponent_-128_-65
