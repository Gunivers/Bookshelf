# We compare the execution tick of the first command of the queue with the current gametick, if the execution tick is equal or lower than the gametick, we execute the command
execute store result score #time bs.data run data get storage bs:schedule scheduled_commands[0].time
execute if score #time bs.data <= #gametime bs.data run function bs.schedule:execute/execute_command with storage bs:schedule scheduled_commands[0]
execute if score #time bs.data <= #gametime bs.data run data remove storage bs:schedule scheduled_commands[0]
scoreboard players remove #size bs.data 1
# We do this task recursively to execute all the command with the same execution time
execute if score #size bs.data matches 1.. if score #time bs.data <= #gametime bs.data run function bs.schedule:execute/execute_tick_rec
