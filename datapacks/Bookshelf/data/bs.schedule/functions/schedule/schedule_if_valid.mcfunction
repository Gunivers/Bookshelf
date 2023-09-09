# We compute the specific gametick at which the command must be executed
execute store result score #gametime bs.data run time query gametime
scoreboard players operation #time bs.data += #gametime bs.data
execute store result storage bs:data schedule.command.time int 1 run scoreboard players get #time bs.data
data remove storage bs:data schedule.command.unit
# We add the command to the schedule queue, ordered by the execution tick
execute store result score #result bs.data run function bs.schedule:schedule/add_to_queue

execute if score #result bs.data matches 1 run function #bs.log:info { feature: "schedule.schedule", path: "bs.schedule:schedule/schedule", message: '"Command scheduled."'}
execute if score #result bs.data matches 0 run function #bs.log:info { feature: "schedule.schedule", path: "bs.schedule:schedule/schedule", message: '"Command has not been scheduled."'}
