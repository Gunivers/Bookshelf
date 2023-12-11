$execute store success score #schedule.success bs.data run function bs.schedule:schedule/unit/normalize with storage bs:const schedule.units[{name:'$(unit)'}]
execute if score #schedule.success bs.data matches 0 run function #bs.log:error {feature:"schedule.schedule", path:"#bs.schedule:schedule", message:'["Unit \'",{"storage":"bs:ctx","nbt":"_[0].unit"},"\' is not supported."]'}
data remove storage bs:ctx _[0].unit
