
# if E = 19
execute store result score #in bs.data run data get storage bs.in math.sqrt 2048
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000001348699152348609109377500399340465975228653405793011188507080078125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 18
execute store result score #in bs.data run data get storage bs.in math.sqrt 4096
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000095367431640625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 17
execute store result score #in bs.data run data get storage bs.in math.sqrt 8192
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000006743495761743045546887501996702329876143267028965055942535400390625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 16
execute store result score #in bs.data run data get storage bs.in math.sqrt 16384
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.000000476837158203125 run scoreboard players get #out bs.data
