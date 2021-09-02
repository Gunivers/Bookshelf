execute at @e[tag=fill,scores={fill=89}] run fill ~-88 ~ ~-88 ~-88 ~ ~88 magma_block
execute at @e[tag=fill,scores={fill=89}] run fill ~-88 ~ ~-88 ~88 ~ ~-88 magma_block
execute at @e[tag=fill,scores={fill=89}] run fill ~88 ~ ~88 ~-88 ~ ~88 magma_block
execute at @e[tag=fill,scores={fill=89}] run fill ~88 ~ ~88 ~88 ~ ~-88 magma_block
scoreboard players set @e[tag=fill,scores={fill=89}] fill 88
schedule function scaffolding_rush:lava/global_rising/fill_87 2t
