execute at @e[tag=fill,scores={fill=42}] run fill ~-41 ~ ~-41 ~-41 ~ ~41 magma_block
execute at @e[tag=fill,scores={fill=42}] run fill ~-41 ~ ~-41 ~41 ~ ~-41 magma_block
execute at @e[tag=fill,scores={fill=42}] run fill ~41 ~ ~41 ~-41 ~ ~41 magma_block
execute at @e[tag=fill,scores={fill=42}] run fill ~41 ~ ~41 ~41 ~ ~-41 magma_block
scoreboard players set @e[tag=fill,scores={fill=42}] fill 41
schedule function scaffolding_rush:lava/global_rising/fill_40 2t
