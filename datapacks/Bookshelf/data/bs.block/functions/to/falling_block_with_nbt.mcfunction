$summon minecraft:falling_block ~ ~ ~ {Tags: ["bs.new"], BlockState: { Name: "$(type)", Properties: $(state_struct)}}
$data merge entity @e[tag=bs.new, type=minecraft:falling_block, limit=1] $(block_display_nbt)
tag @e[tag=bs.new, type=minecraft:falling_block] remove bs.new
