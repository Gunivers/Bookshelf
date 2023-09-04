# if E = 107
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000000000003308722450212110699485634768279851414263248443603515625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 33554432 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 106
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000000132348898008484427979425390731194056570529937744140625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 16777216 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 105
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000000132348898008484427979425390731194056570529937744140625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 16777216 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 104
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000000000005293955920339377119177015629247762262821197509765625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 8388608 run scoreboard players get #math.sqrt.out bs.data