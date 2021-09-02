execute at @e[tag=fill,scores={fill=71}] run fill ~-70 ~ ~-70 ~-70 ~ ~70 magma_block
execute at @e[tag=fill,scores={fill=71}] run fill ~-70 ~ ~-70 ~70 ~ ~-70 magma_block
execute at @e[tag=fill,scores={fill=71}] run fill ~70 ~ ~70 ~-70 ~ ~70 magma_block
execute at @e[tag=fill,scores={fill=71}] run fill ~70 ~ ~70 ~70 ~ ~-70 magma_block
scoreboard players set @e[tag=fill,scores={fill=71}] fill 70
schedule function scaffolding_rush:lava/global_rising/fill_69 2t
