$execute store success score #success bs.data run function bs.schedule:schedule/unit/normalize with storage bs:const schedule.units[{name:'$(unit)'}]
execute if score #success bs.data matches 0 run say a
execute if score #success bs.data matches 0 run function #bs.log:error {namespace:"bs.schedule", tag:"schedule", path:"#bs.schedule:schedule", message:'["Unit \\\'",{"storage":"bs:ctx","nbt":"_.unit"},"\\\' is not supported."]'}
data remove storage bs:ctx _.unit
