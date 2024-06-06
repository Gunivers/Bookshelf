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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/block.html#manage-state
# ------------------------------------------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(properties)

# use _ to prevent populating options with dummy data when searching for selected values
data modify storage bs:out block._[].o[]._ set value 0b
function bs.block:transform/keep_properties/loop with storage bs:ctx _[-1]
# we only need to remove, not set, which mitigates the above issue
data remove storage bs:out block._[].o[{_:0b}].c
data remove storage bs:out block._[].o[]._
