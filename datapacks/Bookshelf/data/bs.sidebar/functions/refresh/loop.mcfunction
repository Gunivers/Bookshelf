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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/sidebar.html#create
# ------------------------------------------------------------------------------------------------------------

$$(cmd) $(text)

data remove storage bs:ctx _.dyn[0]
execute unless data storage bs:ctx _.dyn[0] run return 1

data modify storage bs:ctx _.cmd set from storage bs:ctx _.dyn[0].cmd
data modify entity B5-0-0-0-2 text set from storage bs:ctx _.dyn[0].text
data modify storage bs:ctx _.text set from entity B5-0-0-0-2 text

return run function bs.sidebar:refresh/loop with storage bs:ctx _
