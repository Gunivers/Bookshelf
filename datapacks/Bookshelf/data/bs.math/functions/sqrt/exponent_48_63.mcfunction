
# is E >= 60
execute store result score #__check3 bs.data run data get storage bs.in math.sqrt 0.000000000000000000867361737988403547205962240695953369140625
# is E >= 56
execute store result score #__check2 bs.data run data get storage bs.in math.sqrt 0.00000000000000001387778780781445675529539585113525390625
# is E >= 52
execute store result score #__check1 bs.data run data get storage bs.in math.sqrt 0.0000000000000002220446049250313080847263336181640625

execute if score #__check3 bs.data matches 1.. run function bs.math:sqrt/exponent_60_63
execute if score #__check3 bs.data matches 0 if score #__check2 bs.data matches 1.. run function bs.math:sqrt/exponent_56_59
execute if score #__check2 bs.data matches 0 if score #__check1 bs.data matches 1.. run function bs.math:sqrt/exponent_52_55
execute if score #__check1 bs.data matches 0 run function bs.math:sqrt/exponent_48_51
