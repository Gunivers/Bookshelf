# if E = -109
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 348449143727040986586495598010130648530944
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000000000000010339757656912845935892608650874535669572651386260986328125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -110
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1393796574908163946345982392040522594123776
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000000051698788284564229679463043254372678347863256931304931640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -111
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1393796574908163946345982392040522594123776
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.000000000000000000000000051698788284564229679463043254372678347863256931304931640625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -112
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 5575186299632655785383929568162090376495104
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.0000000000000000000000000258493941422821148397315216271863391739316284656524658203125 run scoreboard players get #math.sqrt.out bs.data