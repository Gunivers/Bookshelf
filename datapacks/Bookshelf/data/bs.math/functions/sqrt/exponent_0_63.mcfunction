
# is E >= 48
execute store result score #_check3 bs.data run data get storage bs.in math.sqrt 0.000000000000003552713678800500929355621337890625
# is E >= 32
execute store result score #_check2 bs.data run data get storage bs.in math.sqrt 0.00000000023283064365386962890625
# is E >= 16
execute store result score #_check1 bs.data run data get storage bs.in math.sqrt 0.0000152587890625

execute if score #_check3 bs.data matches 1.. run function bs.math:sqrt/exponent_48_63
execute if score #_check3 bs.data matches 0 if score #_check2 bs.data matches 1.. run function bs.math:sqrt/exponent_32_47
execute if score #_check2 bs.data matches 0 if score #_check1 bs.data matches 1.. run function bs.math:sqrt/exponent_16_31
execute if score #_check1 bs.data matches 0 run function bs.math:sqrt/exponent_0_15
