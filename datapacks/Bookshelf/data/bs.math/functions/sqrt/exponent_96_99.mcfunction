
# if E = 99
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000000001694065894508600678136645001359283924102783203125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 1482910 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 98
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000000000000338813178901720135627329000271856784820556640625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 1048576 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 97
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000000000067762635780344027125465800054371356964111328125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 741455 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 96
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000000013552527156068805425093160010874271392822265625
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 524288 run scoreboard players get #out bs.data
