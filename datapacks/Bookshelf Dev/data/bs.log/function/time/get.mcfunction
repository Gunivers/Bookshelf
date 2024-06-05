data modify storage bs:in log.hours set string storage bs:data log.time.full_time 0 2
data modify storage bs:in log.minutes set string storage bs:data log.time.full_time 3 5
data modify storage bs:in log.seconds set string storage bs:data log.time.full_time 6 8

execute store result storage bs:in log.gametime int 1 store result score #log.ticks bs.data run time query gametime
execute store result storage bs:in log.ticks int .99999999999 run scoreboard players operation #log.ticks bs.data -= #log.gametime bs.data
execute if score #log.ticks bs.data matches ..10 run function bs.log:time/ticks/format with storage bs:in log
execute if score #log.ticks bs.data matches 11.. run function bs.log:time/ticks/stringify with storage bs:in log
