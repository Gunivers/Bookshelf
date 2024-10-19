# All commands that match the id get canceled
# @batch bs.schedule

await entity B5-0-0-0-4

scoreboard players set #packtest.schedule.ca bs.data 0
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.ca bs.data 1",time:1}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.ca bs.data 1",time:1,id:{cancel:"all"}}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.ca bs.data 1",time:1,id:{cancel:"all"}}}
function #bs.schedule:cancel_all {with:{id:{cancel:"all"}}}

await delay 1t
assert score #packtest.schedule.ca bs.data matches 1
