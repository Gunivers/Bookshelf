# Commands keep the execution context
# @batch bs.schedule
# @dummy

await entity B5-0-0-0-2

setblock ~ ~1 ~ minecraft:bookshelf
function #bs.schedule:schedule {with:{command:"execute if block ~ ~1 ~ minecraft:bookshelf run scoreboard players set @s bs.data 1",time:1}}
await delay 1t
assert score @s bs.data matches 1

execute in minecraft:the_nether run function #bs.schedule:schedule {with:{command:"execute if dimension minecraft:the_nether run scoreboard players set @s bs.data 2",time:1}}
await delay 1t
assert score @s bs.data matches 2
