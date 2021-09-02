execute at @e[tag=fill,scores={fill=88}] run fill ~-87 ~ ~-87 ~-87 ~ ~87 magma_block
execute at @e[tag=fill,scores={fill=88}] run fill ~-87 ~ ~-87 ~87 ~ ~-87 magma_block
execute at @e[tag=fill,scores={fill=88}] run fill ~87 ~ ~87 ~-87 ~ ~87 magma_block
execute at @e[tag=fill,scores={fill=88}] run fill ~87 ~ ~87 ~87 ~ ~-87 magma_block
scoreboard players set @e[tag=fill,scores={fill=88}] fill 87
schedule function scaffolding_rush:lava/global_rising/fill_86 2t
