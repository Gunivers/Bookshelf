# if E = -49
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 604462909807314587353088
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000055511151231257827021181583404541015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -50
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 1208925819614629174706176
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000055511151231257827021181583404541015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -51
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 2417851639229258349412352
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000277555756156289135105907917022705078125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -52
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt.value 4835703278458516698824704
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.0000000000000000277555756156289135105907917022705078125 run scoreboard players get #math.sqrt.out bs.data
