execute at @e[tag=fill,scores={fill=34}] run fill ~-33 ~ ~-33 ~-33 ~ ~33 magma_block
execute at @e[tag=fill,scores={fill=34}] run fill ~-33 ~ ~-33 ~33 ~ ~-33 magma_block
execute at @e[tag=fill,scores={fill=34}] run fill ~33 ~ ~33 ~-33 ~ ~33 magma_block
execute at @e[tag=fill,scores={fill=34}] run fill ~33 ~ ~33 ~33 ~ ~-33 magma_block
scoreboard players set @e[tag=fill,scores={fill=34}] fill 33
schedule function scaffolding_rush:lava/global_rising/fill_32 2t
