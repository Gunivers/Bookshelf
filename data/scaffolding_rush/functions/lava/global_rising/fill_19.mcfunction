execute at @e[tag=fill,scores={fill=20}] run fill ~-19 ~ ~-19 ~-19 ~ ~19 magma_block
execute at @e[tag=fill,scores={fill=20}] run fill ~-19 ~ ~-19 ~19 ~ ~-19 magma_block
execute at @e[tag=fill,scores={fill=20}] run fill ~19 ~ ~19 ~-19 ~ ~19 magma_block
execute at @e[tag=fill,scores={fill=20}] run fill ~19 ~ ~19 ~19 ~ ~-19 magma_block
scoreboard players set @e[tag=fill,scores={fill=20}] fill 19
schedule function scaffolding_rush:lava/global_rising/fill_18 2t
