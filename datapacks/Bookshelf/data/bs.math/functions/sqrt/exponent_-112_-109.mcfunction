# if E = -109
execute store result score #in bs.data run data get storage bs.in math.sqrt 696898287454081973172991196020261297061888
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000000731131275502860158086707161723640682157294624407405097419568534174963599093 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -110
execute store result score #in bs.data run data get storage bs.in math.sqrt 1393796574908163946345982392040522594123776
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.000000000000000000000000051698788284564229679463043254372678347863256931304931640625 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -111
execute store result score #in bs.data run data get storage bs.in math.sqrt 2787593149816327892691964784081045188247552
execute if score #in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000000000000000365565637751430079043353580861820341078647312203702548709784267087481799546 run scoreboard players get #out bs.data
execute if score #in bs.data matches 1073741824.. run return 0
# elif E = -112
execute store result score #in bs.data run data get storage bs.in math.sqrt 5575186299632655785383929568162090376495104
function bs.math:sqrt/calc
execute store result storage bs.out math.sqrt float 0.0000000000000000000000000258493941422821148397315216271863391739316284656524658203125 run scoreboard players get #out bs.data