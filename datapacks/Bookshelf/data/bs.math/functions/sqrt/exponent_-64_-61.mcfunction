# if E = -61
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1237940039285380274899124224
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000173472347597680709441192448139190673828125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -62
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4951760157141521099596496896
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000867361737988403547205962240695953369140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -63
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4951760157141521099596496896
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000867361737988403547205962240695953369140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -64
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 19807040628566084398385987584
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0000000000000000004336808689942017736029811203479766845703125 run scoreboard players get #math.sqrt.out bs.data