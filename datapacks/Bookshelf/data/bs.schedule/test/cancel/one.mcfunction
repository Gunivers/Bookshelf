# Only the last command that matches the id get canceled
# @batch bs.schedule
# @timeout 1

scoreboard players set #packtest.schedule.cancel_one bs.data 0
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.cancel_one bs.data 1",time:1}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.cancel_one bs.data 1",time:1,id:{cancel:"one"}}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.cancel_one bs.data 1",time:1,id:{cancel:"one"}}}
function #bs.schedule:cancel_one {with:{id:{cancel:"one"}}}
await score #packtest.schedule.cancel_one bs.data matches 2
