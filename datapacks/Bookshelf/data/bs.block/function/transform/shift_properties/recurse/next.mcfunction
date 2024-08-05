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

$execute store result score #block.shift_properties.len bs.data if data storage bs:ctx _.g[{n:"$(name)"}].o[]

execute if score #block.shift_properties.len bs.data matches 1.. \
  run function bs.block:transform/shift_properties/recurse/shift_property with storage bs:ctx _.i[-1]

data remove storage bs:ctx _.i[-1]
function bs.block:transform/shift_properties/recurse/next with storage bs:ctx _.i[-1]
