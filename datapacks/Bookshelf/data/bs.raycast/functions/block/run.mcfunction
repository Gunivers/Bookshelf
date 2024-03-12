# compute the delta [dx,dy,dz] (distance to advance to the next grid intersection)
execute store result score #raycast.dx bs.data store result score #raycast.dy bs.data run scoreboard players set #raycast.dz bs.data 1000000
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players set #raycast.dx bs.data -1000000
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players set #raycast.dy bs.data -1000000
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players set #raycast.dz bs.data -1000000
scoreboard players operation #raycast.dx bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.dy bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.dz bs.data /= #raycast.uz bs.data

# compute the length [lx,ly,lz] (distance from the origin to the next grid intersection)
scoreboard players operation #raycast.lx bs.data %= 1000 bs.const
scoreboard players operation #raycast.ly bs.data %= 1000 bs.const
scoreboard players operation #raycast.lz bs.data %= 1000 bs.const
scoreboard players operation #raycast.lx bs.data *= -1000 bs.const
scoreboard players operation #raycast.ly bs.data *= -1000 bs.const
scoreboard players operation #raycast.lz bs.data *= -1000 bs.const
scoreboard players operation #raycast.lx bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.ly bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.lz bs.data /= #raycast.uz bs.data
execute if score #raycast.lx bs.data matches ..0 run scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
execute if score #raycast.ly bs.data matches ..0 run scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.lz bs.data matches ..0 run scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data

# run the recursion loop
execute align xyz run function bs.raycast:block/recurse/next with storage bs:in raycast
