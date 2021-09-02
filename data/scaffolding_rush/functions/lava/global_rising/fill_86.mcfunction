execute at @e[tag=fill,scores={fill=87}] run fill ~-86 ~ ~-86 ~-86 ~ ~86 magma_block
execute at @e[tag=fill,scores={fill=87}] run fill ~-86 ~ ~-86 ~86 ~ ~-86 magma_block
execute at @e[tag=fill,scores={fill=87}] run fill ~86 ~ ~86 ~-86 ~ ~86 magma_block
execute at @e[tag=fill,scores={fill=87}] run fill ~86 ~ ~86 ~86 ~ ~-86 magma_block
scoreboard players set @e[tag=fill,scores={fill=87}] fill 86
schedule function scaffolding_rush:lava/global_rising/fill_85 2t
