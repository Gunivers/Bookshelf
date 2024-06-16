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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#fill
# ------------------------------------------------------------------------------------------------------------

data modify storage bs:data block.process set value { \
  mode: "replace", \
  limit: 4096, \
  masks: [], \
  mask: "", \
  run: "bs.block:process/run/set_type", \
  resume: "bs.block:process/fill/recurse/resume", \
}
data modify storage bs:data block.process merge from storage bs:in block.fill_type

execute if data storage bs:data block.process.masks[0] run function bs.block:process/masks/compile
function bs.block:process/fill/recurse/setup
