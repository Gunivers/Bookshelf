$execute if data storage bs:data block.process.mask{negate:0b} run data modify storage bs:data block.process.mask.cmd set value "if block ~$(x) ~$(y) ~$(z) $(block) $(cmd)"
$execute if data storage bs:data block.process.mask{negate:1b} run data modify storage bs:data block.process.mask.cmd set value "unless block ~$(x) ~$(y) ~$(z) $(block) $(cmd)"

data remove storage bs:data block.process.masks[-1]
data modify storage bs:data block.process.mask merge value {x:0,y:0,z:0,negate:0b,block:0b}
data modify storage bs:data block.process.mask merge from storage bs:data block.process.masks[-1]
execute unless data storage bs:data block.process.mask{block:0b} run function bs.block:process/masks/loop with storage bs:data block.process.mask
