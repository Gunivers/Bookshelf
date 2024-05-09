data modify storage bs:in log.hours set string storage bs:data log.time.full_time 0 2
data modify storage bs:in log.minutes set string storage bs:data log.time.full_time 3 5
data modify storage bs:in log.seconds set string storage bs:data log.time.full_time 6 8

execute store result storage bs:in log.gametime int 1 store result score #log.ticks bs.data run time query gametime
execute store result storage bs:in log.ticks int .99999999999 run scoreboard players operation #log.ticks bs.data -= #log.gametime bs.data
function bs.log:time/format with storage bs:in log
