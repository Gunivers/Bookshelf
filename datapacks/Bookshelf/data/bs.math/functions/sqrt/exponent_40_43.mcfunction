# if E = 43
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0001220703125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 42
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000244140625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 41
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00048828125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.001953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 40
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0009765625
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.001953125 run scoreboard players get #math.sqrt.out bs.data