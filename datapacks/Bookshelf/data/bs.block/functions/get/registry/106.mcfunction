# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[ominous=false] run data modify storage bs:out block.iterable_properties[{name:"ominous"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[ominous=true] run data modify storage bs:out block.iterable_properties[{name:"ominous"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=inactive] run data modify storage bs:out block.iterable_properties[{name:"trial_spawner_state"}].options[{value:"inactive"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=waiting_for_players] run data modify storage bs:out block.iterable_properties[{name:"trial_spawner_state"}].options[{value:"waiting_for_players"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=active] run data modify storage bs:out block.iterable_properties[{name:"trial_spawner_state"}].options[{value:"active"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=waiting_for_reward_ejection] run data modify storage bs:out block.iterable_properties[{name:"trial_spawner_state"}].options[{value:"waiting_for_reward_ejection"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=ejecting_reward] run data modify storage bs:out block.iterable_properties[{name:"trial_spawner_state"}].options[{value:"ejecting_reward"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[trial_spawner_state=cooldown] run data modify storage bs:out block.iterable_properties[{name:"trial_spawner_state"}].options[{value:"cooldown"}].selected set value 1b
