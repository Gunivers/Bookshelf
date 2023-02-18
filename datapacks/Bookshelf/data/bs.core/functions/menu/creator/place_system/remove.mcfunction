execute as @e[tag=bs_Example_System] at @s run scoreboard players operation @s bs.var0 = @s bs.blockId
execute as @e[tag=bs_Example_System] at @s run setblock ~ ~ ~ air
#execute as @e[tag=bs_Example_System] at @s run function bs.block:set
execute as @e[tag=bs_Example_System] at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.05 10 force
kill @e[tag=bs_Example_System]
