execute at @e[tag=fill,scores={fill=38}] run fill ~-37 ~ ~-37 ~-37 ~ ~37 magma_block
execute at @e[tag=fill,scores={fill=38}] run fill ~-37 ~ ~-37 ~37 ~ ~-37 magma_block
execute at @e[tag=fill,scores={fill=38}] run fill ~37 ~ ~37 ~-37 ~ ~37 magma_block
execute at @e[tag=fill,scores={fill=38}] run fill ~37 ~ ~37 ~37 ~ ~-37 magma_block
scoreboard players set @e[tag=fill,scores={fill=38}] fill 37
schedule function scaffolding_rush:lava/global_rising/fill_36 2t
