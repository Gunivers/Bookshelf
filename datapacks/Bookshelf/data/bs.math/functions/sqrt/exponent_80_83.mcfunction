# if E = 83
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000055511151231257827021181583404541015625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 8192 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 82
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000002220446049250313080847263336181640625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 4096 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 81
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000002220446049250313080847263336181640625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 4096 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 80
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000088817841970012523233890533447265625
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 2048 run scoreboard players get #math.sqrt.out bs.data