# if E = -21
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 2251799813685248
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000009094947017729282379150390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -22
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 4503599627370496
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000009094947017729282379150390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -23
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 9007199254740992
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000045474735088646411895751953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -24
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 18014398509481984
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.00000000000045474735088646411895751953125 run scoreboard players get #math.sqrt.out bs.data
