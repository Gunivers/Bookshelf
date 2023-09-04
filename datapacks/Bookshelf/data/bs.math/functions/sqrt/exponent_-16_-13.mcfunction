# if E = -13
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4398046511104
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000002910383045673370361328125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -14
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 17592186044416
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000014551915228366851806640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -15
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 17592186044416
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000014551915228366851806640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -16
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 70368744177664
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0000000000072759576141834259033203125 run scoreboard players get #math.sqrt.out bs.data