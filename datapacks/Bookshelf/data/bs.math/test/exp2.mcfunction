# exp2 returns the correct values
# @batch bs.math

data modify storage bs:in math.exp2.x set value 3.0
function #bs.math:exp2
execute store result score #result bs.data run data get storage bs:out math.exp2 10000
assert score #result bs.data matches 80000..80000

data modify storage bs:in math.exp2.x set value 7.25
function #bs.math:exp2
execute store result score #result bs.data run data get storage bs:out math.exp2 10000
assert score #result bs.data matches 1522184..1522186
