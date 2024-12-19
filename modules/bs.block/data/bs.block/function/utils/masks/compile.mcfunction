# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/Bookshelf).
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

data modify storage bs:ctx _ set value {x:0,y:0,z:0,negate:0b,mask:""}
data modify storage bs:ctx _ merge from storage bs:data block._.masks[-1]
execute if data storage bs:ctx _.block run function bs.block:utils/masks/loop with storage bs:ctx _
data modify storage bs:data block._.mask set from storage bs:ctx _.mask