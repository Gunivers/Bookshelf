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

$execute store success score #success bs.data if data storage bs:ctx _{attrs:$(attrs)}
execute if score #success bs.data matches 1 store result score #result bs.data if data storage bs:ctx _.entry.attrs[]
execute if score #success bs.data matches 1 run scoreboard players operation #block.attrs bs.data > #result bs.data
execute if score #success bs.data matches 1 run data modify storage bs:ctx _.found append from storage bs:ctx _.entry

data remove storage bs:ctx _.sets[-1]
execute store success score #success bs.data run data modify storage bs:ctx _.entry set from storage bs:ctx _.sets[-1]
execute if score #success bs.data matches 1 run function bs.block:transform/type_mappings/find_match with storage bs:ctx _.entry
