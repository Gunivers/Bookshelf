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
# Modified from https://github.com/Aeldrion/Minecraft-Random

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg bs.random *= #lcg_a bs.random
scoreboard players operation #lcg bs.random += #lcg_c bs.random
scoreboard players operation #lcg bs.random %= #lcg_m bs.random

# Loop if necessary
execute if score #lcg bs.random >= #max bs.random run function bs.random:uniform/loop