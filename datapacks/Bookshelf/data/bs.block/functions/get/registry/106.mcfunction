# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[ominous=false] run data modify storage bs:out block._[{n:"ominous"}].o[{v:"false"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[ominous=true] run data modify storage bs:out block._[{n:"ominous"}].o[{v:"true"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=inactive] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"inactive"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=waiting_for_players] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"waiting_for_players"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=active] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"active"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=waiting_for_reward_ejection] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"waiting_for_reward_ejection"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=ejecting_reward] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"ejecting_reward"}].c set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=cooldown] run data modify storage bs:out block._[{n:"trial_spawner_state"}].o[{v:"cooldown"}].c set value 1b
