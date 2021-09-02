execute at @e[tag=fill,scores={fill=61}] run fill ~-60 ~ ~-60 ~-60 ~ ~60 magma_block
execute at @e[tag=fill,scores={fill=61}] run fill ~-60 ~ ~-60 ~60 ~ ~-60 magma_block
execute at @e[tag=fill,scores={fill=61}] run fill ~60 ~ ~60 ~-60 ~ ~60 magma_block
execute at @e[tag=fill,scores={fill=61}] run fill ~60 ~ ~60 ~60 ~ ~-60 magma_block
scoreboard players set @e[tag=fill,scores={fill=61}] fill 60
schedule function scaffolding_rush:lava/global_rising/fill_59 2t
