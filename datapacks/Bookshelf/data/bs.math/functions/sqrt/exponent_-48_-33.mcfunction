# is E >= -36
execute store result score #math.sqrt.__check_3 bs.data run data get storage bs.in math.sqrt 68719476736
# is E >= -40
execute store result score #math.sqrt.__check_2 bs.data run data get storage bs.in math.sqrt 1099511627776
# is E >= -44
execute store result score #math.sqrt.__check_1 bs.data run data get storage bs.in math.sqrt 17592186044416

execute if score #math.sqrt.__check_3 bs.data matches 1.. run function bs.math:sqrt/exponent_-36_-33
execute if score #math.sqrt.__check_3 bs.data matches 0 if score #math.sqrt.__check_2 bs.data matches 1.. run function bs.math:sqrt/exponent_-40_-37
execute if score #math.sqrt.__check_2 bs.data matches 0 if score #math.sqrt.__check_1 bs.data matches 1.. run function bs.math:sqrt/exponent_-44_-41
execute if score #math.sqrt.__check_1 bs.data matches 0 run function bs.math:sqrt/exponent_-48_-45