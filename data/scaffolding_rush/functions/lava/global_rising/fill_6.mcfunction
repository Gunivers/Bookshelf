execute at @e[tag=fill,scores={fill=7}] run fill ~-6 ~ ~-6 ~-6 ~ ~6 magma_block
execute at @e[tag=fill,scores={fill=7}] run fill ~-6 ~ ~-6 ~6 ~ ~-6 magma_block
execute at @e[tag=fill,scores={fill=7}] run fill ~6 ~ ~6 ~-6 ~ ~6 magma_block
execute at @e[tag=fill,scores={fill=7}] run fill ~6 ~ ~6 ~6 ~ ~-6 magma_block
scoreboard players set @e[tag=fill,scores={fill=7}] fill 6
schedule function scaffolding_rush:lava/global_rising/fill_5 2t
