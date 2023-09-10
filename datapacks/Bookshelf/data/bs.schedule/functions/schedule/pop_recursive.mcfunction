data modify storage bs:data schedule.top_commands prepend from storage bs:data schedule.commands[-1]
data remove storage bs:data schedule.commands[-1]
execute store result score #schedule.time2 bs.data run data get storage bs:data schedule.commands[-1].time
execute unless score #schedule.time2 bs.data matches 0 if score #schedule.time bs.data > #schedule.time2 bs.data run function bs.schedule:schedule/pop_recursive
