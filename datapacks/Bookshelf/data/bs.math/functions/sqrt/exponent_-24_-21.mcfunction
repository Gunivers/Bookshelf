# if E = -21
execute store result score #in bs.data run data get storage bs.in math.sqrt 2251799813685248
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000128621974215374861657857932981535527727952328280736082888324744999408721923828125 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -22
execute store result score #in bs.data run data get storage bs.in math.sqrt 4503599627370496
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000009094947017729282379150390625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -23
execute store result score #in bs.data run data get storage bs.in math.sqrt 9007199254740992
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000643109871076874308289289664907677638639761641403680414441623724997043609619140625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -24
execute store result score #in bs.data run data get storage bs.in math.sqrt 18014398509481984
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.00000000000045474735088646411895751953125 run scoreboard players get #out bs.data