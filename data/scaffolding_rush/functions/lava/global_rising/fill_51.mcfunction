execute at @e[tag=fill,scores={fill=52}] run fill ~-51 ~ ~-51 ~-51 ~ ~51 magma_block
execute at @e[tag=fill,scores={fill=52}] run fill ~-51 ~ ~-51 ~51 ~ ~-51 magma_block
execute at @e[tag=fill,scores={fill=52}] run fill ~51 ~ ~51 ~-51 ~ ~51 magma_block
execute at @e[tag=fill,scores={fill=52}] run fill ~51 ~ ~51 ~51 ~ ~-51 magma_block
scoreboard players set @e[tag=fill,scores={fill=52}] fill 51
schedule function scaffolding_rush:lava/global_rising/fill_50 2t
