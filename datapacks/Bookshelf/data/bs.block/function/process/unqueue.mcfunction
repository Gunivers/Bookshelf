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

data modify storage bs:data block.process set from storage bs:data block.processes[-1]
data remove storage bs:data block.process._

$function $(resume) with storage bs:data block.process

data remove storage bs:data block.processes[-1]
execute if data storage bs:data block.processes[-1]._ run function bs.block:process/unqueue with storage bs:data block.processes[-1]
