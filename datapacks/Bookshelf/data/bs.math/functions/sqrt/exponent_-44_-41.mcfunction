# if E = -41
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 1180591620717411303424
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.0000000000000017763568394002504646778106689453125 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -42
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4722366482869645213696
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000088817841970012523233890533447265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -43
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 4722366482869645213696
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs:out math.sqrt float 0.00000000000000088817841970012523233890533447265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -44
execute store result score #math.sqrt.in bs.data run data get storage bs:in math.sqrt 18889465931478580854784
function bs.math:sqrt/calc
execute store result storage bs:out math.sqrt float 0.000000000000000444089209850062616169452667236328125 run scoreboard players get #math.sqrt.out bs.data