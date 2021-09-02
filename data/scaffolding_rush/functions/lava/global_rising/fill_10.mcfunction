execute at @e[tag=fill,scores={fill=11}] run fill ~-10 ~ ~-10 ~-10 ~ ~10 magma_block
execute at @e[tag=fill,scores={fill=11}] run fill ~-10 ~ ~-10 ~10 ~ ~-10 magma_block
execute at @e[tag=fill,scores={fill=11}] run fill ~10 ~ ~10 ~-10 ~ ~10 magma_block
execute at @e[tag=fill,scores={fill=11}] run fill ~10 ~ ~10 ~10 ~ ~-10 magma_block
scoreboard players set @e[tag=fill,scores={fill=11}] fill 10
schedule function scaffolding_rush:lava/global_rising/fill_9 2t
