# if E = 27
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 8
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000152587890625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 26
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 16
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000152587890625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 25
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 32
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000762939453125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 24
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 64
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.00000762939453125 run scoreboard players get #math.sqrt.out bs.data