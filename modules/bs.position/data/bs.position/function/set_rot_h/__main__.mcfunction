# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2026 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/mcbookshelf/bookshelf).
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

data modify storage bs.position: h set compute default float {type:"mul",inputs:[{type:"storage",storage:"bs.position:set_rot_h",path:"in.scale"},{type:"from_int",input:{type:"score",score:"bs.rot.h",target:"this"}}]}
execute rotated as @s rotated 0.0 ~ run function bs.position:set_rot_h/run with storage bs.position:
