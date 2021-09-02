execute at @e[tag=fill,scores={fill=47}] run fill ~-46 ~ ~-46 ~-46 ~ ~46 magma_block
execute at @e[tag=fill,scores={fill=47}] run fill ~-46 ~ ~-46 ~46 ~ ~-46 magma_block
execute at @e[tag=fill,scores={fill=47}] run fill ~46 ~ ~46 ~-46 ~ ~46 magma_block
execute at @e[tag=fill,scores={fill=47}] run fill ~46 ~ ~46 ~46 ~ ~-46 magma_block
scoreboard players set @e[tag=fill,scores={fill=47}] fill 46
schedule function scaffolding_rush:lava/global_rising/fill_45 2t
