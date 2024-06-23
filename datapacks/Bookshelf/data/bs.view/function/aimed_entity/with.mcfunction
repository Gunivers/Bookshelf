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

data modify storage bs:data raycast set value { \
  blocks: true, \
  entities: true, \
  max_distance: 16.0, \
  ignored_blocks: "#bs.hitbox:intangible", \
  ignored_entities: "#bs.hitbox:intangible", \
}
$data modify storage bs:data raycast merge value $(with)
