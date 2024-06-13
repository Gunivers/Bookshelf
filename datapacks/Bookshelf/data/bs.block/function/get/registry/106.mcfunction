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

# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[ominous=false] run data modify storage bs:out block._[{n:"ominous"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[ominous=true] run data modify storage bs:out block._[{n:"ominous"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=inactive] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"inactive"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=waiting_for_players] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"waiting_for_players"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=active] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"active"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=waiting_for_reward_ejection] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"waiting_for_reward_ejection"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=ejecting_reward] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"ejecting_reward"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=cooldown] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"cooldown"}].c set value 1b
