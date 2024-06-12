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

data modify entity @s {} merge from storage bs:ctx _[-1]
execute store success score #success bs.data if data storage bs:ctx _[-1].Owner
execute if score #success bs.data matches 0 at @s run function bs.schedule:execute/run with storage bs:ctx _[-1]
execute if score #success bs.data matches 1 at @s on origin run function bs.schedule:execute/run with storage bs:ctx _[-1]

data remove storage bs:ctx _[-1]
execute if data storage bs:ctx _[-1] run function bs.schedule:execute/loop
