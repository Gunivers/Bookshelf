execute at @e[tag=fill,scores={fill=46}] run fill ~-45 ~ ~-45 ~-45 ~ ~45 magma_block
execute at @e[tag=fill,scores={fill=46}] run fill ~-45 ~ ~-45 ~45 ~ ~-45 magma_block
execute at @e[tag=fill,scores={fill=46}] run fill ~45 ~ ~45 ~-45 ~ ~45 magma_block
execute at @e[tag=fill,scores={fill=46}] run fill ~45 ~ ~45 ~45 ~ ~-45 magma_block
scoreboard players set @e[tag=fill,scores={fill=46}] fill 45
schedule function scaffolding_rush:lava/global_rising/fill_44 2t
