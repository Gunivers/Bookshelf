execute store result score #time bs.data run data get storage bs:data schedule.command.time
scoreboard players set #compare bs.data -1

# Tick
data modify storage bs:data schedule.unit set value "tick"
execute store success score #compare bs.data run data modify storage bs:data schedule.unit set from storage bs:data schedule.command.unit
execute if score #compare bs.data matches 0 run return 1

# Second
data modify storage bs:data schedule.unit set value "second"
execute store success score #compare bs.data run data modify storage bs:data schedule.unit set from storage bs:data schedule.command.unit
execute if score #compare bs.data matches 0 run scoreboard players operation #time bs.data *= 20 bs.const
execute if score #compare bs.data matches 0 run return 1

# Minute
data modify storage bs:data schedule.unit set value "minute"
execute store success score #compare bs.data run data modify storage bs:data schedule.unit set from storage bs:data schedule.command.unit
execute if score #compare bs.data matches 0 run scoreboard players operation #time bs.data *= 1200 bs.const
execute if score #compare bs.data matches 0 run return 1

function #bs.log:error { feature: "schedule.schedule", path: "bs.schedule:schedule/convert_unit", message: '"\'", {"nbt":"schedule.command.unit","storage":"bs:data"}, "\' isn\'t a supported unit."'}
return 0

