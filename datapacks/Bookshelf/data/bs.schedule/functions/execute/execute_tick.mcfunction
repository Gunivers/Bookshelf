execute store result score #gametime bs.data run time query gametime
execute store result score #size bs.data run data get storage bs:schedule scheduled_commands
execute if score #size bs.data matches 1.. run function bs.schedule:execute/execute_tick_rec
