# is E >= -52
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs.in math.sqrt 4503599627370496
# is E >= -56
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs.in math.sqrt 72057594037927936
# is E >= -60
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs.in math.sqrt 1152921504606846976

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_-52_-49
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_-56_-53
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_-60_-57
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_-64_-61