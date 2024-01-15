execute store result storage bs:data block.process.from[0] int 1 run scoreboard players get #block.x bs.data
execute store result storage bs:data block.process.from[1] int 1 run scoreboard players get #block.y bs.data
execute store result storage bs:data block.process.from[2] int 1 run scoreboard players get #block.z bs.data
execute store result storage bs:data block.process.to[0] int 1 run scoreboard players get #block.nx bs.data
execute store result storage bs:data block.process.to[1] int 1 run scoreboard players get #block.ny bs.data
execute store result storage bs:data block.process.to[2] int 1 run scoreboard players get #block.nz bs.data

data modify storage bs:data block.fill_block append from storage bs:data block.process
schedule function bs.block:process/fill_block/resume 1t append
