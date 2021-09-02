execute at @e[tag=fill,scores={fill=50}] run fill ~-49 ~ ~-49 ~-49 ~ ~49 magma_block
execute at @e[tag=fill,scores={fill=50}] run fill ~-49 ~ ~-49 ~49 ~ ~-49 magma_block
execute at @e[tag=fill,scores={fill=50}] run fill ~49 ~ ~49 ~-49 ~ ~49 magma_block
execute at @e[tag=fill,scores={fill=50}] run fill ~49 ~ ~49 ~49 ~ ~-49 magma_block
scoreboard players set @e[tag=fill,scores={fill=50}] fill 49
schedule function scaffolding_rush:lava/global_rising/fill_48 2t
