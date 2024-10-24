# log2 returns the correct values
# @batch bs.math

data modify storage bs:in math.log2.x set value 28.0
function #bs.math:log2
execute store result score #r bs.ctx run data get storage bs:out math.log2 100000
assert score #r bs.ctx matches 480734..480736

data modify storage bs:in math.log2.x set value 123456789.0
function #bs.math:log2
execute store result score #r bs.ctx run data get storage bs:out math.log2 100000
assert score #r bs.ctx matches 2687942..2687944

data modify storage bs:in math.log2.x set value 1234.4321
function #bs.math:log2
execute store result score #r bs.ctx run data get storage bs:out math.log2 100000
assert score #r bs.ctx matches 1026962..1026964
