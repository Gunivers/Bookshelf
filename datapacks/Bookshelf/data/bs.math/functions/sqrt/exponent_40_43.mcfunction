# if E = 43
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0001220703125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.01104854345603980582402048327139709726907312870025634765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 42
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000244140625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00390625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 41
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00048828125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.005524271728019902912010241635698548634536564350128173828125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 40
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0009765625
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.001953125 run scoreboard players get #out bs.data