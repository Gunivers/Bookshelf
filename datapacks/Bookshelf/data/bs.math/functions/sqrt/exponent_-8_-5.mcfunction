# if E = -5
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 34359738368
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000023283064365386962890625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -6
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 68719476736
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000023283064365386962890625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -7
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 137438953472
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000116415321826934814453125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -8
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 274877906944
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.000000000116415321826934814453125 run scoreboard players get #math.sqrt.out bs.data