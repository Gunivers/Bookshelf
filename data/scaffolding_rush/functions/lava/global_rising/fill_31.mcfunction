execute at @e[tag=fill,scores={fill=32}] run fill ~-31 ~ ~-31 ~-31 ~ ~31 magma_block
execute at @e[tag=fill,scores={fill=32}] run fill ~-31 ~ ~-31 ~31 ~ ~-31 magma_block
execute at @e[tag=fill,scores={fill=32}] run fill ~31 ~ ~31 ~-31 ~ ~31 magma_block
execute at @e[tag=fill,scores={fill=32}] run fill ~31 ~ ~31 ~31 ~ ~-31 magma_block
scoreboard players set @e[tag=fill,scores={fill=32}] fill 31
schedule function scaffolding_rush:lava/global_rising/fill_30 2t
