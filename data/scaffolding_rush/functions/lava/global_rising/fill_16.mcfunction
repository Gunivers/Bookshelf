execute at @e[tag=fill,scores={fill=17}] run fill ~-16 ~ ~-16 ~-16 ~ ~16 magma_block
execute at @e[tag=fill,scores={fill=17}] run fill ~-16 ~ ~-16 ~16 ~ ~-16 magma_block
execute at @e[tag=fill,scores={fill=17}] run fill ~16 ~ ~16 ~-16 ~ ~16 magma_block
execute at @e[tag=fill,scores={fill=17}] run fill ~16 ~ ~16 ~16 ~ ~-16 magma_block
scoreboard players set @e[tag=fill,scores={fill=17}] fill 16
schedule function scaffolding_rush:lava/global_rising/fill_15 2t
