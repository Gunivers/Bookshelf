# if E = 47
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 0.00000762939453125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.044194173824159223296081933085588389076292514801025390625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 46
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 0.0000152587890625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 45
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 0.000030517578125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0220970869120796116480409665427941945381462574005126953125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 44
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 0.00006103515625
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.0078125 run scoreboard players get #math.sqrt.out bs.data