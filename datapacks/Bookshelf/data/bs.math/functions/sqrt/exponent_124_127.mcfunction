# if E = 127
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000000000000063108872417680944432938285222622898373856514808721840381622314453125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 17179869184 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 126
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.000000000000000000000000000012621774483536188886587657044524579674771302961744368076324462890625
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 17179869184 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 125
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.00000000000000000000000000002524354896707237777317531408904915934954260592348873615264892578125
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 8589934592 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = 124
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 0.0000000000000000000000000000504870979341447555463506281780983186990852118469774723052978515625
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 8589934592 run scoreboard players get #math.sqrt.out bs.data