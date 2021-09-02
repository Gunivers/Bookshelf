execute at @e[tag=fill,scores={fill=59}] run fill ~-58 ~ ~-58 ~-58 ~ ~58 magma_block
execute at @e[tag=fill,scores={fill=59}] run fill ~-58 ~ ~-58 ~58 ~ ~-58 magma_block
execute at @e[tag=fill,scores={fill=59}] run fill ~58 ~ ~58 ~-58 ~ ~58 magma_block
execute at @e[tag=fill,scores={fill=59}] run fill ~58 ~ ~58 ~58 ~ ~-58 magma_block
scoreboard players set @e[tag=fill,scores={fill=59}] fill 58
schedule function scaffolding_rush:lava/global_rising/fill_57 2t
