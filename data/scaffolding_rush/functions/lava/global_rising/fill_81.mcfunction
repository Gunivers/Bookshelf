execute at @e[tag=fill,scores={fill=82}] run fill ~-81 ~ ~-81 ~-81 ~ ~81 magma_block
execute at @e[tag=fill,scores={fill=82}] run fill ~-81 ~ ~-81 ~81 ~ ~-81 magma_block
execute at @e[tag=fill,scores={fill=82}] run fill ~81 ~ ~81 ~-81 ~ ~81 magma_block
execute at @e[tag=fill,scores={fill=82}] run fill ~81 ~ ~81 ~81 ~ ~-81 magma_block
scoreboard players set @e[tag=fill,scores={fill=82}] fill 81
schedule function scaffolding_rush:lava/global_rising/fill_80 2t
