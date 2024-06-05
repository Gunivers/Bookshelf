data modify storage bs:data block.process.mask set value {x:0,y:0,z:0,negate:0b,cmd:""}
data modify storage bs:data block.process.mask merge from storage bs:data block.process.masks[-1]
execute if data storage bs:data block.process.mask.block run function bs.block:process/masks/loop with storage bs:data block.process.mask
data modify storage bs:data block.process.mask set from storage bs:data block.process.mask.cmd
