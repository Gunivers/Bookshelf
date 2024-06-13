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

scoreboard players set #math.frexp.e bs.data 0
execute store result score #result bs.data run data get storage bs:ctx x 18446744073709551616
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 64
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 39614081257132168796771975168
execute store result score #result bs.data run data get storage bs:ctx x 4294967296
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 32
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 9223372036854775808
execute store result score #result bs.data run data get storage bs:ctx x 65536
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 16
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 140737488355328
execute store result score #result bs.data run data get storage bs:ctx x 256
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 8
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 549755813888
execute store result score #result bs.data run data get storage bs:ctx x 16
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 4
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 34359738368
execute store result score #result bs.data run data get storage bs:ctx x 4
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 2
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 8589934588
execute store result score #result bs.data run data get storage bs:ctx x 2
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 1
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 4294967296
