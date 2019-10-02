execute at @s run tp @s ~ ~1 ~
setblock ~ ~ ~ white_stained_glass
execute at @s unless block ~ ~ ~ air run function gunivers-lib:test-loop