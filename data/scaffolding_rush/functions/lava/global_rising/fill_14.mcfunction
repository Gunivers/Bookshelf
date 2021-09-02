execute at @e[tag=fill,scores={fill=15}] run fill ~-14 ~ ~-14 ~-14 ~ ~14 magma_block
execute at @e[tag=fill,scores={fill=15}] run fill ~-14 ~ ~-14 ~14 ~ ~-14 magma_block
execute at @e[tag=fill,scores={fill=15}] run fill ~14 ~ ~14 ~-14 ~ ~14 magma_block
execute at @e[tag=fill,scores={fill=15}] run fill ~14 ~ ~14 ~14 ~ ~-14 magma_block
scoreboard players set @e[tag=fill,scores={fill=15}] fill 14
schedule function scaffolding_rush:lava/global_rising/fill_13 2t
