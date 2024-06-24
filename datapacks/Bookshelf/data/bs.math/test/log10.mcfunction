# log10 returns the correct values
# @batch bs.math

data modify storage bs:in math.log10.x set value 28.0
function #bs.math:log10
execute store result score #result bs.data run data get storage bs:out math.log10 100000
assert score #result bs.data matches 144714..144716

data modify storage bs:in math.log10.x set value 123456789.0
function #bs.math:log10
execute store result score #result bs.data run data get storage bs:out math.log10 100000
assert score #result bs.data matches 809150..809152

data modify storage bs:in math.log10.x set value 1234.4321
function #bs.math:log10
execute store result score #result bs.data run data get storage bs:out math.log10 100000
assert score #result bs.data matches 309145..309147
