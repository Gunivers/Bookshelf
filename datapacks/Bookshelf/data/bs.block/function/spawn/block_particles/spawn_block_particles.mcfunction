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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#spawn
# ------------------------------------------------------------------------------------------------------------

data modify storage bs:ctx _ set value {}
data modify storage bs:ctx _.name set from storage bs:in block.spawn_block_particles.type
data modify storage bs:ctx _.properties set from storage bs:in block.spawn_block_particles.properties
data modify storage bs:ctx _.delta set from storage bs:in block.spawn_block_particles.delta
data modify storage bs:ctx _.speed set from storage bs:in block.spawn_block_particles.speed
data modify storage bs:ctx _.count set from storage bs:in block.spawn_block_particles.count

function bs.block:spawn/block_particles/run with storage bs:ctx _
