execute at @e[tag=fill,scores={fill=81}] run fill ~-80 ~ ~-80 ~-80 ~ ~80 magma_block
execute at @e[tag=fill,scores={fill=81}] run fill ~-80 ~ ~-80 ~80 ~ ~-80 magma_block
execute at @e[tag=fill,scores={fill=81}] run fill ~80 ~ ~80 ~-80 ~ ~80 magma_block
execute at @e[tag=fill,scores={fill=81}] run fill ~80 ~ ~80 ~80 ~ ~-80 magma_block
scoreboard players set @e[tag=fill,scores={fill=81}] fill 80
schedule function scaffolding_rush:lava/global_rising/fill_79 2t
