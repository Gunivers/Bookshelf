# All commands that match the id get canceled
# @batch bs.schedule
# @timeout 1

scoreboard players set #packtest.schedule.cancel_all bs.data 0
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.cancel_all bs.data 1",time:1}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.cancel_all bs.data 1",time:1,id:{cancel:"all"}}}
function #bs.schedule:schedule {with:{command:"scoreboard players add #packtest.schedule.cancel_all bs.data 1",time:1,id:{cancel:"all"}}}
function #bs.schedule:cancel {with:{id:{cancel:"all"}}}
await score #packtest.schedule.cancel_all bs.data matches 1
