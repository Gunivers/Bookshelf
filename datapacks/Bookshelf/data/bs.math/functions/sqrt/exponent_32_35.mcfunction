# if E = 35
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.03125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000244140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 34
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000244140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 33
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0001220703125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 32
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.25
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.0001220703125 run scoreboard players get #math.sqrt.out bs.data