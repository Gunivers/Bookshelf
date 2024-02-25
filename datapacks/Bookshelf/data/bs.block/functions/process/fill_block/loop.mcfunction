execute if score #block.i bs.data matches 0 run return run function bs.block:process/fill_block/queue

$execute $(mask)run setblock ~ ~ ~ $(block) $(mode)

scoreboard players remove #block.i bs.data 1
scoreboard players remove #block.z bs.data 1
execute if score #block.z bs.data matches -1 run scoreboard players remove #block.y bs.data 1
execute if score #block.z bs.data matches -1 run scoreboard players operation #block.z bs.data = #block.nz bs.data
execute if score #block.y bs.data matches -1 run scoreboard players remove #block.x bs.data 1
execute if score #block.y bs.data matches -1 run scoreboard players operation #block.y bs.data = #block.ny bs.data

execute if score #block.z bs.data < #block.nz bs.data positioned ~ ~ ~1 run return run function bs.block:process/fill_block/loop with storage bs:data block.process
$execute if score #block.y bs.data < #block.ny bs.data positioned ~ ~1 $(z) run return run function bs.block:process/fill_block/loop with storage bs:data block.process
$execute if score #block.x bs.data matches 0.. positioned ~1 $(y) $(z) run return run function bs.block:process/fill_block/loop with storage bs:data block.process
