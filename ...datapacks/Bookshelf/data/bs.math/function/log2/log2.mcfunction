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
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/math.html#logarithm
# ------------------------------------------------------------------------------------------------------------

data modify storage bs:ctx x set from storage bs:in math.log2.x
function bs.math:log2/run
data modify storage bs:out math.log2 set from storage bs:ctx x
