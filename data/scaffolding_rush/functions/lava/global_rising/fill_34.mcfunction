execute at @e[tag=fill,scores={fill=35}] run fill ~-34 ~ ~-34 ~-34 ~ ~34 magma_block
execute at @e[tag=fill,scores={fill=35}] run fill ~-34 ~ ~-34 ~34 ~ ~-34 magma_block
execute at @e[tag=fill,scores={fill=35}] run fill ~34 ~ ~34 ~-34 ~ ~34 magma_block
execute at @e[tag=fill,scores={fill=35}] run fill ~34 ~ ~34 ~34 ~ ~-34 magma_block
scoreboard players set @e[tag=fill,scores={fill=35}] fill 34
schedule function scaffolding_rush:lava/global_rising/fill_33 2t
