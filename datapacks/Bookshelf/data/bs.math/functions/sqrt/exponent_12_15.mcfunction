# if E = 15
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 32768
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000002384185791015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 14
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 65536
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000002384185791015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 13
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 131072
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000011920928955078125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 12
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 262144
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.00000011920928955078125 run scoreboard players get #math.sqrt.out bs.data