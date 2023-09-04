# if E = -81
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1298074214633706907132624082305024
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000001694065894508600678136645001359283924102783203125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -82
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 5192296858534827628530496329220096
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000008470329472543003390683225006796419620513916015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -83
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 5192296858534827628530496329220096
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000000000008470329472543003390683225006796419620513916015625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -84
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 20769187434139310514121985316880384
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.00000000000000000000042351647362715016953416125033982098102569580078125 run scoreboard players get #math.sqrt.out bs.data