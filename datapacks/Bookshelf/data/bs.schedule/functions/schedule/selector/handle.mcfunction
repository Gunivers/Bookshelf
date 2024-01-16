execute store result score #schedule.success bs.data run function bs.schedule:schedule/selector/resolve with storage bs:ctx _[0]
execute if score #schedule.success bs.data matches 0 run function #bs.log:warn {feature:"schedule.schedule", path:"#bs.schedule:schedule", message:'"No entity was found."'}
execute if score #schedule.success bs.data matches 1 run function bs.schedule:schedule/selector/setup with entity B5-0-0-0-3 item.tag.display
