data modify storage bs:ctx _ set value []
execute store result storage bs:ctx y int 1 run time query gametime
function bs.schedule:execute/splice with storage bs:ctx
execute if data storage bs:ctx _[-1] run function bs.schedule:execute/loop
execute in minecraft:overworld run tp B5-0-0-0-4 -30000000 0 1605
