# data modify storage bs:in log.full_time set string block -30000000 0 1605 LastOutput 10 18
data modify storage bs:in log.full_real_time set from storage bs:data log.time.full_time
data modify storage bs:in log.hours set string storage bs:data log.time.full_time 0 2
data modify storage bs:in log.minutes set string storage bs:data log.time.full_time 3 5
data modify storage bs:in log.seconds set string storage bs:data log.time.full_time 6 8
execute store result storage bs:in log.ticks int 1 run scoreboard players get #bs.log.ticks bs.data
execute store result storage bs:in log.gametime int 1 run time query gametime