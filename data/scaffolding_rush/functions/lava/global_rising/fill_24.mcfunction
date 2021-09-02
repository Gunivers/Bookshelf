execute at @e[tag=fill,scores={fill=25}] run fill ~-24 ~ ~-24 ~-24 ~ ~24 magma_block
execute at @e[tag=fill,scores={fill=25}] run fill ~-24 ~ ~-24 ~24 ~ ~-24 magma_block
execute at @e[tag=fill,scores={fill=25}] run fill ~24 ~ ~24 ~-24 ~ ~24 magma_block
execute at @e[tag=fill,scores={fill=25}] run fill ~24 ~ ~24 ~24 ~ ~-24 magma_block
scoreboard players set @e[tag=fill,scores={fill=25}] fill 24
schedule function scaffolding_rush:lava/global_rising/fill_23 2t
