# if E = 51
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000476837158203125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 50
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000095367431640625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 49
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000019073486328125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.03125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 48
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000003814697265625
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.03125 run scoreboard players get #math.sqrt.out bs.data