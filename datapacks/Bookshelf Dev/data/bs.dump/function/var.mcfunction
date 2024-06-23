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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/dump.html#dump-var
# ------------------------------------------------------------------------------------------------------------

# Note: Thanks to tryashtar and PiggyPig for inspiring the idea behind this module.

data modify storage bs:out dump set value ['[{"text":"[","color":"#cccccc"},{"selector":"@s"},"] ⇒ "]']
$data modify storage bs:data dump set value [{var:$(var),indent:'"\\u2000"'}]
function bs.dump:interpret/any
tellraw @a {"type":"nbt","storage":"bs:out","nbt":"dump[]","separator":"","interpret":true}
