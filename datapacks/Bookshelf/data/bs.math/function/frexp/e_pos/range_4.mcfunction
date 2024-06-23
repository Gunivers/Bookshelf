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

execute store result score #math.frexp.x bs.data run data get storage bs:ctx x 1
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run scoreboard players set #math.frexp.e bs.data 24
execute store result score #math.frexp.x bs.data run data get storage bs:ctx x 256
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run scoreboard players set #math.frexp.e bs.data 16
execute store result score #math.frexp.x bs.data run data get storage bs:ctx x 65536
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run scoreboard players set #math.frexp.e bs.data 8
execute store result score #math.frexp.x bs.data run data get storage bs:ctx x 16777216
scoreboard players set #math.frexp.e bs.data 0
