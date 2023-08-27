
# if E = 15
execute store result score #in bs.data run data get storage bs.in math.sqrt 32768
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000033717478808715227734437509983511649380716335144825279712677001953125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 14
execute store result score #in bs.data run data get storage bs.in math.sqrt 65536
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000002384185791015625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 13
execute store result score #in bs.data run data get storage bs.in math.sqrt 131072
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000168587394043576138672187549917558246903581675724126398563385009765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 12
execute store result score #in bs.data run data get storage bs.in math.sqrt 262144
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.00000011920928955078125 run scoreboard players get #out bs.data
