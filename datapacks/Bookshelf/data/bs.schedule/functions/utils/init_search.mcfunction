data modify storage bs:data schedule.tail set from storage bs:schedule scheduled_commands
data modify storage bs:data schedule.head set value []
execute store result score #size bs.data run data get storage bs:data schedule.tail
