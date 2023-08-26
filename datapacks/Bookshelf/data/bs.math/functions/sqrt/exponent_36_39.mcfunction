# if E = 39
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.001953125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0027621358640099514560051208178492743172682821750640869140625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 38
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00390625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0009765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 37
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0078125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00138106793200497572800256040892463715863414108753204345703125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 36
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.015625
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.00048828125 run scoreboard players get #out bs.data