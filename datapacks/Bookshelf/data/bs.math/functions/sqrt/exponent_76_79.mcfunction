# if E = 79
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000088817841970012523233890533447265625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 2048 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 78
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000003552713678800500929355621337890625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 1024 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 77
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000003552713678800500929355621337890625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 1024 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 76
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000142108547152020037174224853515625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 512 run scoreboard players get #math.sqrt.out bs.data