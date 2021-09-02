execute at @e[tag=fill,scores={fill=24}] run fill ~-23 ~ ~-23 ~-23 ~ ~23 magma_block
execute at @e[tag=fill,scores={fill=24}] run fill ~-23 ~ ~-23 ~23 ~ ~-23 magma_block
execute at @e[tag=fill,scores={fill=24}] run fill ~23 ~ ~23 ~-23 ~ ~23 magma_block
execute at @e[tag=fill,scores={fill=24}] run fill ~23 ~ ~23 ~23 ~ ~-23 magma_block
scoreboard players set @e[tag=fill,scores={fill=24}] fill 23
schedule function scaffolding_rush:lava/global_rising/fill_22 2t
