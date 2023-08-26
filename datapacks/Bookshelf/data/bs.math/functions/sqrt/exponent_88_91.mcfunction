# if E = 91
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000000004336808689942017736029811203479766845703125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 185364 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 90
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.000000000000000000867361737988403547205962240695953369140625
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 65536 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 89
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.00000000000000000173472347597680709441192448139190673828125
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 92682 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = 88
execute store result score #in bs.data run data get storage bs.in math.sqrt 0.0000000000000000034694469519536141888238489627838134765625
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 32768 run scoreboard players get #out bs.data