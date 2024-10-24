# Fill a region with a random block or type
# @batch bs.block

fill ~1 ~ ~-1 ~1 ~1 ~1 minecraft:oak_stairs[facing=west]
fill ~-1 ~ ~-1 ~-1 ~1 ~1 minecraft:oak_stairs[facing=east]
fill ~ ~ ~1 ~ ~1 ~1 minecraft:oak_stairs[facing=north]
fill ~ ~ ~-1 ~ ~1 ~-1 minecraft:oak_stairs[facing=south]

data modify storage bs:in block.fill_random set value {entries:[{type:"minecraft:spruce_stairs"},{block:"minecraft:air"}],masks:[{block:"#minecraft:stairs"}],from:"~-1 ~ ~-1",to:"~1 ~1 ~1"}
function #bs.block:fill_random

scoreboard players set #c bs.ctx 0
execute if block ~1 ~ ~-1 minecraft:spruce_stairs[facing=west] run scoreboard players add #c bs.ctx 1
execute if block ~1 ~ ~ minecraft:spruce_stairs[facing=west] run scoreboard players add #c bs.ctx 1
execute if block ~1 ~ ~1 minecraft:spruce_stairs[facing=west] run scoreboard players add #c bs.ctx 1
execute if block ~1 ~1 ~-1 minecraft:spruce_stairs[facing=west] run scoreboard players add #c bs.ctx 1
execute if block ~1 ~1 ~ minecraft:spruce_stairs[facing=west] run scoreboard players add #c bs.ctx 1
execute if block ~1 ~1 ~1 minecraft:spruce_stairs[facing=west] run scoreboard players add #c bs.ctx 1
execute if block ~-1 ~ ~-1 minecraft:spruce_stairs[facing=east] run scoreboard players add #c bs.ctx 1
execute if block ~-1 ~ ~ minecraft:spruce_stairs[facing=east] run scoreboard players add #c bs.ctx 1
execute if block ~-1 ~ ~1 minecraft:spruce_stairs[facing=east] run scoreboard players add #c bs.ctx 1
execute if block ~-1 ~1 ~-1 minecraft:spruce_stairs[facing=east] run scoreboard players add #c bs.ctx 1
execute if block ~-1 ~1 ~ minecraft:spruce_stairs[facing=east] run scoreboard players add #c bs.ctx 1
execute if block ~-1 ~1 ~1 minecraft:spruce_stairs[facing=east] run scoreboard players add #c bs.ctx 1
execute if block ~ ~ ~1 minecraft:spruce_stairs[facing=north] run scoreboard players add #c bs.ctx 1
execute if block ~ ~1 ~1 minecraft:spruce_stairs[facing=north] run scoreboard players add #c bs.ctx 1
execute if block ~ ~ ~-1 minecraft:spruce_stairs[facing=south] run scoreboard players add #c bs.ctx 1
execute if block ~ ~1 ~-1 minecraft:spruce_stairs[facing=south] run scoreboard players add #c bs.ctx 1

execute unless score #c bs.ctx matches 1..15 run fail "Random should approximately affect half of the blocks and keep their states when using type."
