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
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/link.html#mirror-point
# ------------------------------------------------------------------------------------------------------------

scoreboard players operation $id.suid bs.in = @s bs.link.to
execute as @n[predicate=bs.id:suid_equal,sort=arbitrary] run function bs.link:mirror_point_ata/as_origin
execute facing entity @n[predicate=bs.id:suid_equal,sort=arbitrary] feet run function bs.link:mirror_point_ata/apply with storage bs:ctx
