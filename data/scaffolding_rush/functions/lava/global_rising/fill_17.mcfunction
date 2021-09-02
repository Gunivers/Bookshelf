execute at @e[tag=fill,scores={fill=18}] run fill ~-17 ~ ~-17 ~-17 ~ ~17 magma_block
execute at @e[tag=fill,scores={fill=18}] run fill ~-17 ~ ~-17 ~17 ~ ~-17 magma_block
execute at @e[tag=fill,scores={fill=18}] run fill ~17 ~ ~17 ~-17 ~ ~17 magma_block
execute at @e[tag=fill,scores={fill=18}] run fill ~17 ~ ~17 ~17 ~ ~-17 magma_block
scoreboard players set @e[tag=fill,scores={fill=18}] fill 17
schedule function scaffolding_rush:lava/global_rising/fill_16 2t
