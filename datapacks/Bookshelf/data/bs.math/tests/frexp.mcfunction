# frexp returns the correct values
# @batch bs.math

data modify storage bs:in math.frexp.x set value 5.8
function #bs.math:frexp
execute store result score #e bs.data run data get storage bs:out math.frexp.e
execute store result score #x bs.data run data get storage bs:out math.frexp.x 1000
assert score #e bs.data matches 3
assert score #x bs.data matches 725

data modify storage bs:in math.frexp.x set value 18238123421.42
function #bs.math:frexp
execute store result score #e bs.data run data get storage bs:out math.frexp.e
execute store result score #x bs.data run data get storage bs:out math.frexp.x 100000000
assert score #e bs.data matches 35
assert score #x bs.data matches 53079924..53079926
