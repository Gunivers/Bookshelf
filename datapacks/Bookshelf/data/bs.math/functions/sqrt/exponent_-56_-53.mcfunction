# if E = -53
execute store result score #in bs.data run data get storage bs.in math.sqrt 9671406556917033397649408
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000392523114670943791680474648991502464990088892458301034205092605589015875011682510376 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -54
execute store result score #in bs.data run data get storage bs.in math.sqrt 19342813113834066795298816
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000000001387778780781445675529539585113525390625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -55
execute store result score #in bs.data run data get storage bs.in math.sqrt 38685626227668133590597632
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000196261557335471895840237324495751232495044446229150517102546302794507937505841255188 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -56
execute store result score #in bs.data run data get storage bs.in math.sqrt 77371252455336267181195264
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.000000000000000006938893903907228377647697925567626953125 run scoreboard players get #out bs.data