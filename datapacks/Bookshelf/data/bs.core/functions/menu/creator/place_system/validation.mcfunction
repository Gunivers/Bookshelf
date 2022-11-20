# Validation
execute if entity @s[tag=bs_Creator_Valid_System] as @e[tag=bs_Example_System,limit=1,sort=nearest] at @s run setblock ~ ~1 ~ redstone_block
execute if entity @s[tag=bs_Creator_Valid_System] as @e[tag=bs_Example_System,limit=1,sort=nearest] at @s run function bs.block:set
execute if entity @s[tag=bs_Creator_Valid_System] run tag @s remove bs_Creator_Valid_System
