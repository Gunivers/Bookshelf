# if E = -53
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 9671406556917033397649408
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000001387778780781445675529539585113525390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -54
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 19342813113834066795298816
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000001387778780781445675529539585113525390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -55
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 38685626227668133590597632
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000006938893903907228377647697925567626953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -56
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 77371252455336267181195264
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.000000000000000006938893903907228377647697925567626953125 run scoreboard players get #math.sqrt.out bs.data