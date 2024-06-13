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

$function bs.health:time_to_live/run_callback with storage bs:data health.ttl.callbacks[{uuid:$(UUID)}]
$data remove storage bs:data health.ttl.callbacks[{uuid:$(UUID)}]

scoreboard players reset @s bs.ttl
execute at @s run tp @s ~ -1000000 ~
kill @s
