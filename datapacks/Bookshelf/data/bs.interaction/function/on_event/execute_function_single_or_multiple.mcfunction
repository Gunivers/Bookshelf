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

# Note:
#  Execute the function on all the executors.
# Input:
#  - bs:ctx _: { executor: UUID | UUID[], multiple: boolean, function: string }

execute if data storage bs:ctx _{multiple: false} run data modify entity B5-0-0-0-4 Owner set from storage bs:ctx _.executor
execute if data storage bs:ctx _{multiple: false} run function bs.interaction:on_event/execute_function with storage bs:ctx _
execute if data storage bs:ctx _{multiple: true} run function bs.interaction:on_event/execute_function_multiple
