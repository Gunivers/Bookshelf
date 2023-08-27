
# is E >= 92
execute store result score #__check3 bs.data run data get storage bs.in math.sqrt 0.00000000000000000000000000020194839173657902218540251271239327479634084738790988922119140625
# is E >= 88
execute store result score #__check2 bs.data run data get storage bs.in math.sqrt 0.0000000000000000000000000032311742677852643549664402033982923967414535582065582275390625
# is E >= 84
execute store result score #__check1 bs.data run data get storage bs.in math.sqrt 0.000000000000000000000000051698788284564229679463043254372678347863256931304931640625

execute if score #__check3 bs.data matches 1.. run function bs.math:sqrt/exponent_92_95
execute if score #__check3 bs.data matches 0 if score #__check2 bs.data matches 1.. run function bs.math:sqrt/exponent_88_91
execute if score #__check2 bs.data matches 0 if score #__check1 bs.data matches 1.. run function bs.math:sqrt/exponent_84_87
execute if score #__check1 bs.data matches 0 run function bs.math:sqrt/exponent_80_83
