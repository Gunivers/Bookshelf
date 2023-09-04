# if E = 31
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.25
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0001220703125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 30
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00006103515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 29
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00006103515625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 28
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.000030517578125 run scoreboard players get #math.sqrt.out bs.data