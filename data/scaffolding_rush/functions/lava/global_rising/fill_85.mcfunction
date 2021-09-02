execute at @e[tag=fill,scores={fill=86}] run fill ~-85 ~ ~-85 ~-85 ~ ~85 magma_block
execute at @e[tag=fill,scores={fill=86}] run fill ~-85 ~ ~-85 ~85 ~ ~-85 magma_block
execute at @e[tag=fill,scores={fill=86}] run fill ~85 ~ ~85 ~-85 ~ ~85 magma_block
execute at @e[tag=fill,scores={fill=86}] run fill ~85 ~ ~85 ~85 ~ ~-85 magma_block
scoreboard players set @e[tag=fill,scores={fill=86}] fill 85
schedule function scaffolding_rush:lava/global_rising/fill_84 2t
