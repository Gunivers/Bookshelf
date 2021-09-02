execute at @e[tag=fill,scores={fill=60}] run fill ~-59 ~ ~-59 ~-59 ~ ~59 magma_block
execute at @e[tag=fill,scores={fill=60}] run fill ~-59 ~ ~-59 ~59 ~ ~-59 magma_block
execute at @e[tag=fill,scores={fill=60}] run fill ~59 ~ ~59 ~-59 ~ ~59 magma_block
execute at @e[tag=fill,scores={fill=60}] run fill ~59 ~ ~59 ~59 ~ ~-59 magma_block
scoreboard players set @e[tag=fill,scores={fill=60}] fill 59
schedule function scaffolding_rush:lava/global_rising/fill_58 2t
