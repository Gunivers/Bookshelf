execute if score #block.i bs.data matches 0 run return run function bs.block:process/fill_block/recurse/queue

$execute $(mask)run setblock ~ ~ ~ $(block) $(mode)

scoreboard players remove #block.i bs.data 1
scoreboard players add #block.z bs.data 1
execute if score #block.z bs.data > #block.max_z bs.data run scoreboard players add #block.y bs.data 1
execute if score #block.z bs.data > #block.max_z bs.data run scoreboard players operation #block.z bs.data = #block.min_z bs.data
execute if score #block.y bs.data > #block.max_y bs.data run scoreboard players add #block.x bs.data 1
execute if score #block.y bs.data > #block.max_y bs.data run scoreboard players operation #block.y bs.data = #block.min_y bs.data

execute if score #block.z bs.data > #block.min_z bs.data positioned ~ ~ ~1 run return run function bs.block:process/fill_block/recurse/next with storage bs:data block.process
$execute if score #block.y bs.data > #block.min_y bs.data positioned ~ ~1 $(min_z) run return run function bs.block:process/fill_block/recurse/next with storage bs:data block.process
$execute if score #block.x bs.data <= #block.max_x bs.data positioned ~1 $(min_y) $(min_z) run return run function bs.block:process/fill_block/recurse/next with storage bs:data block.process
