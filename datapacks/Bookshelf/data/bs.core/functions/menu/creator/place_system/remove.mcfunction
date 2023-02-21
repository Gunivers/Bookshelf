execute as @e[tag=bs_Example_System] at @s run scoreboard players operation @s bs.in.0 = @s bs.block.id
execute as @e[tag=bs_Example_System] at @s run setblock ~ ~ ~ air
#execute as @e[tag=bs_Example_System] at @s run function bs.block:set
execute as @e[tag=bs_Example_System] at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 10 force
kill @e[tag=bs_Example_System]
