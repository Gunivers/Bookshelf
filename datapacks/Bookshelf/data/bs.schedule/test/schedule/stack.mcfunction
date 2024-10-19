# Commands can stack on a same tick
# @batch bs.schedule

await entity B5-0-0-0-4

function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.stack bs.data 1",time:1}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.stack bs.data 1",time:1}}
await delay 1t
assert score #packtest.schedule.stack bs.data matches 2
