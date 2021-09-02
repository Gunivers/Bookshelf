execute at @e[tag=fill,scores={fill=75}] run fill ~-74 ~ ~-74 ~-74 ~ ~74 magma_block
execute at @e[tag=fill,scores={fill=75}] run fill ~-74 ~ ~-74 ~74 ~ ~-74 magma_block
execute at @e[tag=fill,scores={fill=75}] run fill ~74 ~ ~74 ~-74 ~ ~74 magma_block
execute at @e[tag=fill,scores={fill=75}] run fill ~74 ~ ~74 ~74 ~ ~-74 magma_block
scoreboard players set @e[tag=fill,scores={fill=75}] fill 74
schedule function scaffolding_rush:lava/global_rising/fill_73 2t
