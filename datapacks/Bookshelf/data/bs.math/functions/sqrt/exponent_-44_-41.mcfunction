# if E = -41
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 2361183241434822606848
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000025121479338940402667550377535456157759365689117331266189125926757697016000747680664062 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -42
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 4722366482869645213696
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_even
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.00000000000000088817841970012523233890533447265625 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -43
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 9444732965739290427392
execute if score #math.sqrt.in bs.data matches 1073741824.. run function bs.math:sqrt/calc_odd
execute if score #math.sqrt.in bs.data matches 1073741824.. store result storage bs.out math.sqrt float 0.0000000000000012560739669470201333775188767728078879682844558665633094562963378848508000373840332031 run scoreboard players get #math.sqrt.out bs.data
execute if score #math.sqrt.in bs.data matches 1073741824.. run return 0
# elif E = -44
execute store result score #math.sqrt.in bs.data run data get storage bs.in math.sqrt 18889465931478580854784
function bs.math:sqrt/calc_even
execute store result storage bs.out math.sqrt float 0.000000000000000444089209850062616169452667236328125 run scoreboard players get #math.sqrt.out bs.data