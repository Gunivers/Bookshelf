execute at @e[tag=fill,scores={fill=36}] run fill ~-35 ~ ~-35 ~-35 ~ ~35 magma_block
execute at @e[tag=fill,scores={fill=36}] run fill ~-35 ~ ~-35 ~35 ~ ~-35 magma_block
execute at @e[tag=fill,scores={fill=36}] run fill ~35 ~ ~35 ~-35 ~ ~35 magma_block
execute at @e[tag=fill,scores={fill=36}] run fill ~35 ~ ~35 ~35 ~ ~-35 magma_block
scoreboard players set @e[tag=fill,scores={fill=36}] fill 35
schedule function scaffolding_rush:lava/global_rising/fill_34 2t
