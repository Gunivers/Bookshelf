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

attribute @s minecraft:generic.max_health modifier remove 68f0b501-5dca-4abb-8b69-057945a9583d
$attribute @s minecraft:generic.max_health modifier add 68f0b501-5dca-4abb-8b69-057945a9583d "bs.health" $(x) add_value
effect give @s minecraft:instant_health 1 28 true
advancement revoke @s only bs.health:restore_health
