# if E = -25
execute store result score #in bs.data run data get storage bs.in math.sqrt 36028797018963968
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000643109871076874308289289664907677638639761641403680414441623724997043609619140625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -26
execute store result score #in bs.data run data get storage bs.in math.sqrt 72057594037927936
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000227373675443232059478759765625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -27
execute store result score #in bs.data run data get storage bs.in math.sqrt 144115188075855872
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000003215549355384371541446448324538388193198808207018402072208118624985218048095703125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -28
execute store result score #in bs.data run data get storage bs.in math.sqrt 288230376151711744
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.0000000000001136868377216160297393798828125 run scoreboard players get #out bs.data