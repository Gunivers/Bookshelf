execute at @e[tag=fill,scores={fill=14}] run fill ~-13 ~ ~-13 ~-13 ~ ~13 magma_block
execute at @e[tag=fill,scores={fill=14}] run fill ~-13 ~ ~-13 ~13 ~ ~-13 magma_block
execute at @e[tag=fill,scores={fill=14}] run fill ~13 ~ ~13 ~-13 ~ ~13 magma_block
execute at @e[tag=fill,scores={fill=14}] run fill ~13 ~ ~13 ~13 ~ ~-13 magma_block
scoreboard players set @e[tag=fill,scores={fill=14}] fill 13
schedule function scaffolding_rush:lava/global_rising/fill_12 2t
