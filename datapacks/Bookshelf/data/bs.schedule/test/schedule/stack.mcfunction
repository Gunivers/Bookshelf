# Commands can stack on a same tick
# @batch bs.schedule
# @timeout 1

scoreboard players set #packtest.schedule.stack bs.data 0
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.stack bs.data 1",time:1}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.stack bs.data 1",time:1}}
await score #packtest.schedule.stack bs.data matches 2
