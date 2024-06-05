execute store result storage bs:data block.process.x int 1 run scoreboard players get #block.x bs.data
execute store result storage bs:data block.process.y int 1 run scoreboard players get #block.y bs.data
execute store result storage bs:data block.process.z int 1 run scoreboard players get #block.z bs.data

data modify storage bs:data block.fill_type append from storage bs:data block.process
schedule function bs.block:process/fill_type/recurse/resume 1t replace
