execute at @e[tag=fill,scores={fill=54}] run fill ~-53 ~ ~-53 ~-53 ~ ~53 magma_block
execute at @e[tag=fill,scores={fill=54}] run fill ~-53 ~ ~-53 ~53 ~ ~-53 magma_block
execute at @e[tag=fill,scores={fill=54}] run fill ~53 ~ ~53 ~-53 ~ ~53 magma_block
execute at @e[tag=fill,scores={fill=54}] run fill ~53 ~ ~53 ~53 ~ ~-53 magma_block
scoreboard players set @e[tag=fill,scores={fill=54}] fill 53
schedule function scaffolding_rush:lava/global_rising/fill_52 2t
