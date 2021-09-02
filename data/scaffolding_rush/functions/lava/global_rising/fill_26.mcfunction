execute at @e[tag=fill,scores={fill=27}] run fill ~-26 ~ ~-26 ~-26 ~ ~26 magma_block
execute at @e[tag=fill,scores={fill=27}] run fill ~-26 ~ ~-26 ~26 ~ ~-26 magma_block
execute at @e[tag=fill,scores={fill=27}] run fill ~26 ~ ~26 ~-26 ~ ~26 magma_block
execute at @e[tag=fill,scores={fill=27}] run fill ~26 ~ ~26 ~26 ~ ~-26 magma_block
scoreboard players set @e[tag=fill,scores={fill=27}] fill 26
schedule function scaffolding_rush:lava/global_rising/fill_25 2t
