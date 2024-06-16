# Commands keep the execution context
# @batch bs.schedule
# @dummy
# @timeout 1

setblock ~ ~1 ~ minecraft:bookshelf
function #bs.schedule:schedule {with:{command:"execute if block ~ ~1 ~ minecraft:bookshelf run scoreboard players set @s bs.data 1",time:1}}
await score @s bs.data matches 1
