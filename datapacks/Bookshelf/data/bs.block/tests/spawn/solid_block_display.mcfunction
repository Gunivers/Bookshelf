# Spawn block display with a hitbox
# @batch bs.block

data modify storage bs:in block.spawn_solid_block_display.type set value "minecraft:bookshelf"
data modify storage bs:in block.spawn_solid_block_display.extra_nbt set value {Tags:["packtest"]}
function #bs.block:spawn_solid_block_display
execute as @e[type=minecraft:block_display,tag=packtest] on passengers at @s positioned ~ ~ ~.4 run tag @s[dx=0] add packtest.hitbox

assert entity @e[type=minecraft:block_display,tag=packtest] inside
assert entity @e[type=!minecraft:block_display,tag=packtest.hitbox] inside
