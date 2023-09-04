# if E = -21
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1125899906842624
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000001818989403545856475830078125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -22
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4503599627370496
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000009094947017729282379150390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -23
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4503599627370496
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000009094947017729282379150390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -24
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 18014398509481984
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.00000000000045474735088646411895751953125 run scoreboard players get #math.sqrt.out bs.data