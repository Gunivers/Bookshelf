execute at @e[tag=fill,scores={fill=85}] run fill ~-84 ~ ~-84 ~-84 ~ ~84 magma_block
execute at @e[tag=fill,scores={fill=85}] run fill ~-84 ~ ~-84 ~84 ~ ~-84 magma_block
execute at @e[tag=fill,scores={fill=85}] run fill ~84 ~ ~84 ~-84 ~ ~84 magma_block
execute at @e[tag=fill,scores={fill=85}] run fill ~84 ~ ~84 ~84 ~ ~-84 magma_block
scoreboard players set @e[tag=fill,scores={fill=85}] fill 84
schedule function scaffolding_rush:lava/global_rising/fill_83 2t
