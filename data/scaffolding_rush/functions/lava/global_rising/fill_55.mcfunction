execute at @e[tag=fill,scores={fill=56}] run fill ~-55 ~ ~-55 ~-55 ~ ~55 magma_block
execute at @e[tag=fill,scores={fill=56}] run fill ~-55 ~ ~-55 ~55 ~ ~-55 magma_block
execute at @e[tag=fill,scores={fill=56}] run fill ~55 ~ ~55 ~-55 ~ ~55 magma_block
execute at @e[tag=fill,scores={fill=56}] run fill ~55 ~ ~55 ~55 ~ ~-55 magma_block
scoreboard players set @e[tag=fill,scores={fill=56}] fill 55
schedule function scaffolding_rush:lava/global_rising/fill_54 2t
