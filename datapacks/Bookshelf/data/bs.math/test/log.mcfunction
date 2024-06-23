# log returns the correct values
# @batch bs.math

data modify storage bs:in math.log.x set value 28.0
function #bs.math:log
execute store result score #result bs.data run data get storage bs:out math.log 100000
assert score #result bs.data matches 333219..333221

data modify storage bs:in math.log.x set value 123456789.0
function #bs.math:log
execute store result score #result bs.data run data get storage bs:out math.log 100000
assert score #result bs.data matches 1863139..1863141

data modify storage bs:in math.log.x set value 1234.4321
function #bs.math:log
execute store result score #result bs.data run data get storage bs:out math.log 100000
assert score #result bs.data matches 711835..711837
