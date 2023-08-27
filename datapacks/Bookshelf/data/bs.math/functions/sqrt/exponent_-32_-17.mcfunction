
# is E >= -20
execute store result score #__check3 bs.data run data get storage bs.in math.sqrt 1048576
# is E >= -24
execute store result score #__check2 bs.data run data get storage bs.in math.sqrt 16777216
# is E >= -28
execute store result score #__check1 bs.data run data get storage bs.in math.sqrt 268435456

execute if score #__check3 bs.data matches 1.. run function bs.math:sqrt/exponent_-20_-17
execute if score #__check3 bs.data matches 0 if score #__check2 bs.data matches 1.. run function bs.math:sqrt/exponent_-24_-21
execute if score #__check2 bs.data matches 0 if score #__check1 bs.data matches 1.. run function bs.math:sqrt/exponent_-28_-25
execute if score #__check1 bs.data matches 0 run function bs.math:sqrt/exponent_-32_-29
