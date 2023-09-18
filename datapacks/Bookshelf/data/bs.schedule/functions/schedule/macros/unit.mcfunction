$execute store success score #schedule.success bs.data run function bs.schedule:schedule/normalize_unit with storage bs:const schedule.units[{name:'$(unit)'}]
execute if score #schedule.success bs.data matches 0 run function #bs.log:error {feature:"schedule.schedule", path:"bs.schedule:schedule/macros/unit", message:'["The unit provided is not supported."]'}
