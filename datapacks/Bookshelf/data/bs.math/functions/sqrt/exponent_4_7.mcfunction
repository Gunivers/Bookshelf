# if E = 7
execute store result score #in bs.data run data get storage bs.in math.sqrt 8388608
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000021073424255447017334023443739694780862947709465515799820423126220703125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 6
execute store result score #in bs.data run data get storage bs.in math.sqrt 16777216
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000001490116119384765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 5
execute store result score #in bs.data run data get storage bs.in math.sqrt 33554432
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000105367121277235086670117218698473904314738547327578999102115631103515625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 4
execute store result score #in bs.data run data get storage bs.in math.sqrt 67108864
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.000000007450580596923828125 run scoreboard players get #out bs.data