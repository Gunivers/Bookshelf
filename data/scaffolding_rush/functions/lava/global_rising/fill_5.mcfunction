execute at @e[tag=fill,scores={fill=6}] run fill ~-5 ~ ~-5 ~-5 ~ ~5 magma_block
execute at @e[tag=fill,scores={fill=6}] run fill ~-5 ~ ~-5 ~5 ~ ~-5 magma_block
execute at @e[tag=fill,scores={fill=6}] run fill ~5 ~ ~5 ~-5 ~ ~5 magma_block
execute at @e[tag=fill,scores={fill=6}] run fill ~5 ~ ~5 ~5 ~ ~-5 magma_block
scoreboard players set @e[tag=fill,scores={fill=6}] fill 5
schedule function scaffolding_rush:lava/global_rising/fill_4 2t
