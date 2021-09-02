execute at @e[tag=fill,scores={fill=53}] run fill ~-52 ~ ~-52 ~-52 ~ ~52 magma_block
execute at @e[tag=fill,scores={fill=53}] run fill ~-52 ~ ~-52 ~52 ~ ~-52 magma_block
execute at @e[tag=fill,scores={fill=53}] run fill ~52 ~ ~52 ~-52 ~ ~52 magma_block
execute at @e[tag=fill,scores={fill=53}] run fill ~52 ~ ~52 ~52 ~ ~-52 magma_block
scoreboard players set @e[tag=fill,scores={fill=53}] fill 52
schedule function scaffolding_rush:lava/global_rising/fill_51 2t
