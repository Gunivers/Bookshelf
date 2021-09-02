execute at @e[tag=fill,scores={fill=90}] run fill ~-89 ~ ~-89 ~-89 ~ ~89 magma_block
execute at @e[tag=fill,scores={fill=90}] run fill ~-89 ~ ~-89 ~89 ~ ~-89 magma_block
execute at @e[tag=fill,scores={fill=90}] run fill ~89 ~ ~89 ~-89 ~ ~89 magma_block
execute at @e[tag=fill,scores={fill=90}] run fill ~89 ~ ~89 ~89 ~ ~-89 magma_block
scoreboard players set @e[tag=fill,scores={fill=90}] fill 89
schedule function scaffolding_rush:lava/global_rising/fill_88 2t
