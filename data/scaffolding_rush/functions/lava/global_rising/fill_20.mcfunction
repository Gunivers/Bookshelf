execute at @e[tag=fill,scores={fill=21}] run fill ~-20 ~ ~-20 ~-20 ~ ~20 magma_block
execute at @e[tag=fill,scores={fill=21}] run fill ~-20 ~ ~-20 ~20 ~ ~-20 magma_block
execute at @e[tag=fill,scores={fill=21}] run fill ~20 ~ ~20 ~-20 ~ ~20 magma_block
execute at @e[tag=fill,scores={fill=21}] run fill ~20 ~ ~20 ~20 ~ ~-20 magma_block
scoreboard players set @e[tag=fill,scores={fill=21}] fill 20
schedule function scaffolding_rush:lava/global_rising/fill_19 2t
