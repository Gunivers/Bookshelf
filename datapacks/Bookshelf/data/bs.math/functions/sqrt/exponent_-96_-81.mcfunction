
# is E >= -84
execute store result score #__check3 bs.data run data get storage bs.in math.sqrt 19342813113834066795298816
# is E >= -88
execute store result score #__check2 bs.data run data get storage bs.in math.sqrt 309485009821345068724781056
# is E >= -92
execute store result score #__check1 bs.data run data get storage bs.in math.sqrt 4951760157141521099596496896

execute if score #__check3 bs.data matches 1.. run function bs.math:sqrt/exponent_-84_-81
execute if score #__check3 bs.data matches 0 if score #__check2 bs.data matches 1.. run function bs.math:sqrt/exponent_-88_-85
execute if score #__check2 bs.data matches 0 if score #__check1 bs.data matches 1.. run function bs.math:sqrt/exponent_-92_-89
execute if score #__check1 bs.data matches 0 run function bs.math:sqrt/exponent_-96_-93
