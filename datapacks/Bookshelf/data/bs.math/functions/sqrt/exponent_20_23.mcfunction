# if E = 23
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 128
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000003814697265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 22
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 256
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000003814697265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 21
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 512
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000019073486328125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 20
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1024
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.0000019073486328125 run scoreboard players get #math.sqrt.out bs.data