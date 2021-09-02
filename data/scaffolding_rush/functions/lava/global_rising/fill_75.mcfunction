execute at @e[tag=fill,scores={fill=76}] run fill ~-75 ~ ~-75 ~-75 ~ ~75 magma_block
execute at @e[tag=fill,scores={fill=76}] run fill ~-75 ~ ~-75 ~75 ~ ~-75 magma_block
execute at @e[tag=fill,scores={fill=76}] run fill ~75 ~ ~75 ~-75 ~ ~75 magma_block
execute at @e[tag=fill,scores={fill=76}] run fill ~75 ~ ~75 ~75 ~ ~-75 magma_block
scoreboard players set @e[tag=fill,scores={fill=76}] fill 75
schedule function scaffolding_rush:lava/global_rising/fill_74 2t
