

say 2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @a[tag=bs.location.tp,limit=1] bs.var0
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @a[tag=bs.location.tp,limit=1] bs.var1
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @a[tag=bs.location.tp,limit=1] bs.var2
execute at @s run tp @a[tag=bs.location.tp] ~ ~ ~
kill @s
