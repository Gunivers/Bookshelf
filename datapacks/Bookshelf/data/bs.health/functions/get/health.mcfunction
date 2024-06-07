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
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#get
# ------------------------------------------------------------------------------------------------------------

execute store success score #success bs.data run attribute @s minecraft:generic.max_health modifier value get 68f0b501-5dca-4abb-8b69-057945a9583d
execute if score #success bs.data matches 1 store result storage bs:out health.get_health double 0.00001 run attribute @s minecraft:generic.max_health get 100000
execute if score #success bs.data matches 0 run data modify storage bs:out health.get_health set from entity @s Health
$return run data get storage bs:out health.get_health $(scale)
