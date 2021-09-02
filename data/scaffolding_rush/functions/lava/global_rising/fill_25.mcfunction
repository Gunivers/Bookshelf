execute at @e[tag=fill,scores={fill=26}] run fill ~-25 ~ ~-25 ~-25 ~ ~25 magma_block
execute at @e[tag=fill,scores={fill=26}] run fill ~-25 ~ ~-25 ~25 ~ ~-25 magma_block
execute at @e[tag=fill,scores={fill=26}] run fill ~25 ~ ~25 ~-25 ~ ~25 magma_block
execute at @e[tag=fill,scores={fill=26}] run fill ~25 ~ ~25 ~25 ~ ~-25 magma_block
scoreboard players set @e[tag=fill,scores={fill=26}] fill 25
schedule function scaffolding_rush:lava/global_rising/fill_24 2t
