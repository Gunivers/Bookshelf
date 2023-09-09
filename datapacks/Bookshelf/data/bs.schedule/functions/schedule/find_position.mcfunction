execute store result score #time2 bs.data run data get storage bs:data schedule.tail[0].time
execute if score #time bs.data < #time2 bs.data run return 1
data modify storage bs:data schedule.head append from storage bs:data schedule.tail[0]
data remove storage bs:data schedule.tail[0]
scoreboard players remove #size bs.data 1
execute if score #size bs.data matches 1.. run function bs.schedule:schedule/find_position
