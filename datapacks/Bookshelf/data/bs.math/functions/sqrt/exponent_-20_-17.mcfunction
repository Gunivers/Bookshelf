# if E = -17
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 70368744177664
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000072759576141834259033203125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -18
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 281474976710656
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000363797880709171295166015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -19
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 281474976710656
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000363797880709171295166015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -20
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1125899906842624
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.000000000001818989403545856475830078125 run scoreboard players get #math.sqrt.out bs.data