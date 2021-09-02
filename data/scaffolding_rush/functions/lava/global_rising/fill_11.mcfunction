execute at @e[tag=fill,scores={fill=12}] run fill ~-11 ~ ~-11 ~-11 ~ ~11 magma_block
execute at @e[tag=fill,scores={fill=12}] run fill ~-11 ~ ~-11 ~11 ~ ~-11 magma_block
execute at @e[tag=fill,scores={fill=12}] run fill ~11 ~ ~11 ~-11 ~ ~11 magma_block
execute at @e[tag=fill,scores={fill=12}] run fill ~11 ~ ~11 ~11 ~ ~-11 magma_block
scoreboard players set @e[tag=fill,scores={fill=12}] fill 11
schedule function scaffolding_rush:lava/global_rising/fill_10 2t
