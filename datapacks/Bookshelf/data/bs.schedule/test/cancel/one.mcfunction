# Only the last command that matches the id get canceled
# @batch bs.schedule

await entity B5-0-0-0-2

scoreboard players set #packtest.schedule.co bs.data 0
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.co bs.data 1",time:1}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.co bs.data 1",time:1,id:{cancel:"one"}}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.co bs.data 1",time:1,id:{cancel:"one"}}}
function #bs.schedule:cancel_one {with:{id:{cancel:"one"}}}

await delay 1t
assert score #packtest.schedule.co bs.data matches 2
