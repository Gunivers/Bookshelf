# if E = -13
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 8796093022208
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000014551915228366851806640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -14
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 17592186044416
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000014551915228366851806640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -15
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 35184372088832
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000072759576141834259033203125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -16
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 70368744177664
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.0000000000072759576141834259033203125 run scoreboard players get #math.sqrt.out bs.data
