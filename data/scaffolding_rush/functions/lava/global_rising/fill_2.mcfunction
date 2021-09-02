execute at @e[tag=fill,scores={fill=3}] run fill ~-2 ~ ~-2 ~-2 ~ ~2 magma_block
execute at @e[tag=fill,scores={fill=3}] run fill ~-2 ~ ~-2 ~2 ~ ~-2 magma_block
execute at @e[tag=fill,scores={fill=3}] run fill ~2 ~ ~2 ~-2 ~ ~2 magma_block
execute at @e[tag=fill,scores={fill=3}] run fill ~2 ~ ~2 ~2 ~ ~-2 magma_block
scoreboard players set @e[tag=fill,scores={fill=3}] fill 2
schedule function scaffolding_rush:lava/global_rising/fill_1 2t
