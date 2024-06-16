# Fill a region with a random block or type
# @batch bs.block

fill ~1 ~ ~-1 ~1 ~1 ~1 minecraft:oak_stairs[facing=west]
fill ~-1 ~ ~-1 ~-1 ~1 ~1 minecraft:oak_stairs[facing=east]
fill ~ ~ ~1 ~ ~1 ~1 minecraft:oak_stairs[facing=north]
fill ~ ~ ~-1 ~ ~1 ~-1 minecraft:oak_stairs[facing=south]

data modify storage bs:in block.fill_random set value {entries:[{type:"minecraft:spruce_stairs"},{block:"minecraft:air"}],masks:[{block:"#minecraft:stairs"}]}
execute positioned ~-1 ~ ~-1 summon minecraft:marker run data modify storage bs:in block.fill_random.from set from entity @s Pos
execute positioned ~1 ~1 ~1 summon minecraft:marker run data modify storage bs:in block.fill_random.to set from entity @s Pos

function #bs.block:fill_random

scoreboard players set #result bs.data 0
execute if block ~1 ~ ~-1 minecraft:spruce_stairs[facing=west] run scoreboard players add #result bs.data 1
execute if block ~1 ~ ~ minecraft:spruce_stairs[facing=west] run scoreboard players add #result bs.data 1
execute if block ~1 ~ ~1 minecraft:spruce_stairs[facing=west] run scoreboard players add #result bs.data 1
execute if block ~1 ~1 ~-1 minecraft:spruce_stairs[facing=west] run scoreboard players add #result bs.data 1
execute if block ~1 ~1 ~ minecraft:spruce_stairs[facing=west] run scoreboard players add #result bs.data 1
execute if block ~1 ~1 ~1 minecraft:spruce_stairs[facing=west] run scoreboard players add #result bs.data 1
execute if block ~-1 ~ ~-1 minecraft:spruce_stairs[facing=east] run scoreboard players add #result bs.data 1
execute if block ~-1 ~ ~ minecraft:spruce_stairs[facing=east] run scoreboard players add #result bs.data 1
execute if block ~-1 ~ ~1 minecraft:spruce_stairs[facing=east] run scoreboard players add #result bs.data 1
execute if block ~-1 ~1 ~-1 minecraft:spruce_stairs[facing=east] run scoreboard players add #result bs.data 1
execute if block ~-1 ~1 ~ minecraft:spruce_stairs[facing=east] run scoreboard players add #result bs.data 1
execute if block ~-1 ~1 ~1 minecraft:spruce_stairs[facing=east] run scoreboard players add #result bs.data 1
execute if block ~ ~ ~1 minecraft:spruce_stairs[facing=north] run scoreboard players add #result bs.data 1
execute if block ~ ~1 ~1 minecraft:spruce_stairs[facing=north] run scoreboard players add #result bs.data 1
execute if block ~ ~ ~-1 minecraft:spruce_stairs[facing=south] run scoreboard players add #result bs.data 1
execute if block ~ ~1 ~-1 minecraft:spruce_stairs[facing=south] run scoreboard players add #result bs.data 1

execute unless score #result bs.data matches 1..15 run fail "Random should approximately affect half of the blocks and keep their states when using type."

