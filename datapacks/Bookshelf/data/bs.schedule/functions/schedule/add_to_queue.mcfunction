# Search the correct position for the command to schedule, i.e. where the position where all previous should be executed before the new command and all next commands should be executed after

function bs.schedule:utils/init_search
execute store result score #time bs.data run data get storage bs:data schedule.command.time
execute if score #size bs.data matches 1.. run function bs.schedule:schedule/find_position
data modify storage bs:data schedule.head append from storage bs:data schedule.command
execute if score #size bs.data matches 1.. run function bs.schedule:utils/rebuild
data modify storage bs:schedule scheduled_commands set from storage bs:data schedule.head
