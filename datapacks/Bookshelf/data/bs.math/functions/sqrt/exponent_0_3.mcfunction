# if E = 3
execute store result score #in bs.data run data get storage bs.in math.sqrt 134217728
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000526835606386175433350586093492369521573692736637894995510578155517578125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 2
execute store result score #in bs.data run data get storage bs.in math.sqrt 268435456
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000037252902984619140625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 1
execute store result score #in bs.data run data get storage bs.in math.sqrt 536870912
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000002634178031930877166752930467461847607868463683189474977552890777587890625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 0
execute store result score #in bs.data run data get storage bs.in math.sqrt 1073741824
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.00000000186264514923095703125 run scoreboard players get #out bs.data