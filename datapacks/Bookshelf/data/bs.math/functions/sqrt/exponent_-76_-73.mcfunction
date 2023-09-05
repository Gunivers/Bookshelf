# if E = -73
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 10141204801825835211973625643008
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000013552527156068805425093160010874271392822265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -74
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 20282409603651670423947251286016
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000013552527156068805425093160010874271392822265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -75
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 40564819207303340847894502572032
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000067762635780344027125465800054371356964111328125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -76
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 81129638414606681695789005144064
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.0000000000000000000067762635780344027125465800054371356964111328125 run scoreboard players get #math.sqrt.out bs.data