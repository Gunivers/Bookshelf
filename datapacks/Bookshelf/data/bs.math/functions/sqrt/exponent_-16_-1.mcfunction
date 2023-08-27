
# is E >= -4
execute store result score #__check3 bs.data run data get storage bs.in math.sqrt 16
# is E >= -8
execute store result score #__check2 bs.data run data get storage bs.in math.sqrt 256
# is E >= -12
execute store result score #__check1 bs.data run data get storage bs.in math.sqrt 4096

execute if score #__check3 bs.data matches 1.. run function bs.math:sqrt/exponent_-4_-1
execute if score #__check3 bs.data matches 0 if score #__check2 bs.data matches 1.. run function bs.math:sqrt/exponent_-8_-5
execute if score #__check2 bs.data matches 0 if score #__check1 bs.data matches 1.. run function bs.math:sqrt/exponent_-12_-9
execute if score #__check1 bs.data matches 0 run function bs.math:sqrt/exponent_-16_-13
