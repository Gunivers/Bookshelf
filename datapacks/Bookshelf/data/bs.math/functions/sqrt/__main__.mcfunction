# is E >= 64
execute store result score #check3 bs.data run data get storage bs.in math.sqrt 0.0000000000000000000542101086242752217003726400434970855712890625
# break if negative
execute if score #check bs.data matches ..-1 run return -1
# is E >= 0
execute store result score #check2 bs.data run data get storage bs.in math.sqrt 1
# is E >= -64
execute store result score #check1 bs.data run data get storage bs.in math.sqrt 18446744073709551616

execute if score #check3 bs.data matches 1.. run function bs.math:sqrt/exponent_64_127
execute if score #check3 bs.data matches 0 if score #check2 bs.data matches 1.. run function bs.math:sqrt/exponent_0_63
execute if score #check2 bs.data matches 0 if score #check1 bs.data matches 1.. run function bs.math:sqrt/exponent_-64_-1
execute if score #check1 bs.data matches 0 run function bs.math:sqrt/exponent_-128_-65