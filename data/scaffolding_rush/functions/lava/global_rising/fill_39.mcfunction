execute at @e[tag=fill,scores={fill=40}] run fill ~-39 ~ ~-39 ~-39 ~ ~39 magma_block
execute at @e[tag=fill,scores={fill=40}] run fill ~-39 ~ ~-39 ~39 ~ ~-39 magma_block
execute at @e[tag=fill,scores={fill=40}] run fill ~39 ~ ~39 ~-39 ~ ~39 magma_block
execute at @e[tag=fill,scores={fill=40}] run fill ~39 ~ ~39 ~39 ~ ~-39 magma_block
scoreboard players set @e[tag=fill,scores={fill=40}] fill 39
schedule function scaffolding_rush:lava/global_rising/fill_38 2t
