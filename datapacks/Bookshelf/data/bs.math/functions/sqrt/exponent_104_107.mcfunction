# if E = 107
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000000000000661744490042422139897126953655970282852649688720703125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 16777216 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 106
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000000132348898008484427979425390731194056570529937744140625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 16777216 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 105
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000000000026469779601696885595885078146238811314105987548828125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 8388608 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 104
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000000000005293955920339377119177015629247762262821197509765625
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 8388608 run scoreboard players get #math.sqrt.out bs.data