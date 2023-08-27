
# is E >= -68
execute store result score #__check3 bs.data run data get storage bs.in math.sqrt 295147905179352825856
# is E >= -72
execute store result score #__check2 bs.data run data get storage bs.in math.sqrt 4722366482869645213696
# is E >= -76
execute store result score #__check1 bs.data run data get storage bs.in math.sqrt 75557863725914323419136

execute if score #__check3 bs.data matches 1.. run function bs.math:sqrt/exponent_-68_-65
execute if score #__check3 bs.data matches 0 if score #__check2 bs.data matches 1.. run function bs.math:sqrt/exponent_-72_-69
execute if score #__check2 bs.data matches 0 if score #__check1 bs.data matches 1.. run function bs.math:sqrt/exponent_-76_-73
execute if score #__check1 bs.data matches 0 run function bs.math:sqrt/exponent_-80_-77
