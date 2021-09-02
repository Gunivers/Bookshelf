execute at @e[tag=fill,scores={fill=44}] run fill ~-43 ~ ~-43 ~-43 ~ ~43 magma_block
execute at @e[tag=fill,scores={fill=44}] run fill ~-43 ~ ~-43 ~43 ~ ~-43 magma_block
execute at @e[tag=fill,scores={fill=44}] run fill ~43 ~ ~43 ~-43 ~ ~43 magma_block
execute at @e[tag=fill,scores={fill=44}] run fill ~43 ~ ~43 ~43 ~ ~-43 magma_block
scoreboard players set @e[tag=fill,scores={fill=44}] fill 43
schedule function scaffolding_rush:lava/global_rising/fill_42 2t
