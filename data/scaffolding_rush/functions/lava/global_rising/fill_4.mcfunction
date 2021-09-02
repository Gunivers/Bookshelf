execute at @e[tag=fill,scores={fill=5}] run fill ~-4 ~ ~-4 ~-4 ~ ~4 magma_block
execute at @e[tag=fill,scores={fill=5}] run fill ~-4 ~ ~-4 ~4 ~ ~-4 magma_block
execute at @e[tag=fill,scores={fill=5}] run fill ~4 ~ ~4 ~-4 ~ ~4 magma_block
execute at @e[tag=fill,scores={fill=5}] run fill ~4 ~ ~4 ~4 ~ ~-4 magma_block
scoreboard players set @e[tag=fill,scores={fill=5}] fill 4
schedule function scaffolding_rush:lava/global_rising/fill_3 2t
