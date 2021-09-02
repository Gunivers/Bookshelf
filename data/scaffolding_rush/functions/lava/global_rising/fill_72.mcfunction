execute at @e[tag=fill,scores={fill=73}] run fill ~-72 ~ ~-72 ~-72 ~ ~72 magma_block
execute at @e[tag=fill,scores={fill=73}] run fill ~-72 ~ ~-72 ~72 ~ ~-72 magma_block
execute at @e[tag=fill,scores={fill=73}] run fill ~72 ~ ~72 ~-72 ~ ~72 magma_block
execute at @e[tag=fill,scores={fill=73}] run fill ~72 ~ ~72 ~72 ~ ~-72 magma_block
scoreboard players set @e[tag=fill,scores={fill=73}] fill 72
schedule function scaffolding_rush:lava/global_rising/fill_71 2t
