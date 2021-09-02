execute at @e[tag=fill,scores={fill=65}] run fill ~-64 ~ ~-64 ~-64 ~ ~64 magma_block
execute at @e[tag=fill,scores={fill=65}] run fill ~-64 ~ ~-64 ~64 ~ ~-64 magma_block
execute at @e[tag=fill,scores={fill=65}] run fill ~64 ~ ~64 ~-64 ~ ~64 magma_block
execute at @e[tag=fill,scores={fill=65}] run fill ~64 ~ ~64 ~64 ~ ~-64 magma_block
scoreboard players set @e[tag=fill,scores={fill=65}] fill 64
schedule function scaffolding_rush:lava/global_rising/fill_63 2t
