data modify storage bs:ctx _ set value []
execute store result storage bs:ctx y int 1 run time query gametime
function bs.schedule:execute/splice with storage bs:ctx
execute as B5-0-0-0-4 run function bs.schedule:execute/context
