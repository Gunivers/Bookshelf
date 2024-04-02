# check block and entity collision (debug: particle minecraft:block_marker barrier ~.5 ~.5 ~.5 0 0 0 0 1)
$execute unless block ~ ~ ~ $(ignored_blocks) run function bs.raycast:block/check/any

# advance on the grid by the shortest length
execute if score #raycast.lx bs.data <= #raycast.ly bs.data if score #raycast.lx bs.data <= #raycast.lz bs.data if score #raycast.lx bs.data <= #raycast.limit bs.data run return run function bs.raycast:block/recurse/x
execute if score #raycast.ly bs.data <= #raycast.lx bs.data if score #raycast.ly bs.data <= #raycast.lz bs.data if score #raycast.ly bs.data <= #raycast.limit bs.data run return run function bs.raycast:block/recurse/y
execute if score #raycast.lz bs.data <= #raycast.lx bs.data if score #raycast.lz bs.data <= #raycast.ly bs.data if score #raycast.lz bs.data <= #raycast.limit bs.data run return run function bs.raycast:block/recurse/z
