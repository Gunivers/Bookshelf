# if E = -61
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 2475880078570760549798248448
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000024532694666933986980029665561968904061880555778643814637818287849313492188230156898 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -62
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 4951760157141521099596496896
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000000000867361737988403547205962240695953369140625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -63
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 9903520314283042199192993792
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000012266347333466993490014832780984452030940277889321907318909143924656746094115078449 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -64
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 19807040628566084398385987584
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.0000000000000000004336808689942017736029811203479766845703125 run scoreboard players get #math.sqrt.out bs.data