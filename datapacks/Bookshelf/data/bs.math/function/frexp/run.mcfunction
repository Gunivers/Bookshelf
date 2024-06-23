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

execute store result score #result bs.data run data get storage bs:ctx x
execute unless score #result bs.data matches 0 run function bs.math:frexp/e_pos/split
execute unless score #result bs.data matches 0 run function bs.math:frexp/e_pos/chunk
execute if score #result bs.data matches 0 run function bs.math:frexp/e_neg
