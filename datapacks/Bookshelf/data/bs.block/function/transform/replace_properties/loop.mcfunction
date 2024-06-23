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

$data remove storage bs:out block._[{n:$(name)}].o[].c
$execute if data storage bs:out block._[{n:$(name)}].o[{v:$(value)}] run data modify storage bs:out block._[{n:$(name)}].o[{v:$(value)}].c set value 1b
data remove storage bs:ctx _[-1]
function bs.block:transform/replace_properties/loop with storage bs:ctx _[-1]
