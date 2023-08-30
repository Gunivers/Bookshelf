$summon minecraft:block_display ~ ~ ~ {Tags: ["bs.new"], block_state: { Name: "$(type)", Properties: $(state_struct)}}
$data merge entity @e[tag=bs.new, type=minecraft:block_display, limit=1] $(block_display_nbt)
tag @e[tag=bs.new, type=minecraft:block_display] remove bs.new
