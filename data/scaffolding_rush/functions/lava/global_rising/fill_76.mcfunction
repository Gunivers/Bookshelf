execute at @e[tag=fill,scores={fill=77}] run fill ~-76 ~ ~-76 ~-76 ~ ~76 magma_block
execute at @e[tag=fill,scores={fill=77}] run fill ~-76 ~ ~-76 ~76 ~ ~-76 magma_block
execute at @e[tag=fill,scores={fill=77}] run fill ~76 ~ ~76 ~-76 ~ ~76 magma_block
execute at @e[tag=fill,scores={fill=77}] run fill ~76 ~ ~76 ~76 ~ ~-76 magma_block
scoreboard players set @e[tag=fill,scores={fill=77}] fill 76
schedule function scaffolding_rush:lava/global_rising/fill_75 2t
