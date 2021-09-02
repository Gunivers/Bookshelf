execute at @e[tag=fill,scores={fill=8}] run fill ~-7 ~ ~-7 ~-7 ~ ~7 magma_block
execute at @e[tag=fill,scores={fill=8}] run fill ~-7 ~ ~-7 ~7 ~ ~-7 magma_block
execute at @e[tag=fill,scores={fill=8}] run fill ~7 ~ ~7 ~-7 ~ ~7 magma_block
execute at @e[tag=fill,scores={fill=8}] run fill ~7 ~ ~7 ~7 ~ ~-7 magma_block
scoreboard players set @e[tag=fill,scores={fill=8}] fill 7
schedule function scaffolding_rush:lava/global_rising/fill_6 2t
