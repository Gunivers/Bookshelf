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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/id.html#update-chain-unique-id
# ------------------------------------------------------------------------------------------------------------

execute store result score #size bs.cid if entity @e[scores={bs.cid=1..}]
execute if score #size bs.cid < #counter bs.cid run scoreboard players set $id.cuid.check bs.in 0
execute if score #size bs.cid < #counter bs.cid run function bs.id:update_cuids/loop
