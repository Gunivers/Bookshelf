execute at @e[tag=fill,scores={fill=55}] run fill ~-54 ~ ~-54 ~-54 ~ ~54 magma_block
execute at @e[tag=fill,scores={fill=55}] run fill ~-54 ~ ~-54 ~54 ~ ~-54 magma_block
execute at @e[tag=fill,scores={fill=55}] run fill ~54 ~ ~54 ~-54 ~ ~54 magma_block
execute at @e[tag=fill,scores={fill=55}] run fill ~54 ~ ~54 ~54 ~ ~-54 magma_block
scoreboard players set @e[tag=fill,scores={fill=55}] fill 54
schedule function scaffolding_rush:lava/global_rising/fill_53 2t
