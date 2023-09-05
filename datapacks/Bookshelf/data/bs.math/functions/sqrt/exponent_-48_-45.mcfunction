# if E = -45
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 37778931862957161709568
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000002220446049250313080847263336181640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -46
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 75557863725914323419136
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000002220446049250313080847263336181640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -47
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 151115727451828646838272
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000011102230246251565404236316680908203125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -48
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 302231454903657293676544
function bs.math:sqrt/calc_even
execute store result storage bs:out math.sqrt float 0.00000000000000011102230246251565404236316680908203125 run scoreboard players get #math.sqrt.out bs.data