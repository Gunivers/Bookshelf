# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
# ------------------------------------------------------------------------------------------------------------

execute if score $random.fractal_noise_2d bs.out matches -1000..-778 run setblock ~ ~ ~ cherry_planks
execute if score $random.fractal_noise_2d bs.out matches -777..-556 run setblock ~ ~ ~ bamboo_planks
execute if score $random.fractal_noise_2d bs.out matches -555..-334 run setblock ~ ~ ~ birch_planks
execute if score $random.fractal_noise_2d bs.out matches -333..-112 run setblock ~ ~ ~ oak_planks
execute if score $random.fractal_noise_2d bs.out matches -111..110 run setblock ~ ~ ~ jungle_planks
execute if score $random.fractal_noise_2d bs.out matches 111..332 run setblock ~ ~ ~ acacia_planks
execute if score $random.fractal_noise_2d bs.out matches 333..554 run setblock ~ ~ ~ mangrove_planks
execute if score $random.fractal_noise_2d bs.out matches 555..776 run setblock ~ ~ ~ spruce_planks
execute if score $random.fractal_noise_2d bs.out matches 777..1000 run setblock ~ ~ ~ dark_oak_planks
