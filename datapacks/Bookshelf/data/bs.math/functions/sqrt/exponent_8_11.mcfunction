# if E = 11
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 524288
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000059604644775390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 10
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1048576
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000059604644775390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 9
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 2097152
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000298023223876953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 8
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4194304
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.0000000298023223876953125 run scoreboard players get #math.sqrt.out bs.data