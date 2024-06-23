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

# copy _ options to ctx if the property name is valid
$execute store success score #success bs.data run data modify storage bs:ctx _[-1].o set from storage bs:out block._[{n:$(name)}].o
# if no option is selected, choose the first one
execute if score #success bs.data matches 1 unless data storage bs:ctx _[-1].o[{c:1b}] run data modify storage bs:ctx _[-1].o[0].c set value 1b
# update _ to indicate that this entry should be kept selected then copy ctx back to _ options
execute if score #success bs.data matches 1 run data modify storage bs:ctx _[-1].o[{c:1b}]._ set value 1b
$execute if score #success bs.data matches 1 run data modify storage bs:out block._[{n:$(name)}].o set from storage bs:ctx _[-1].o

data remove storage bs:ctx _[-1]
function bs.block:transform/keep_properties/loop with storage bs:ctx _[-1]
