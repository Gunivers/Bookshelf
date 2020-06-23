execute store result entity @s Pos[0] double 0.001 run scoreboard players add @a[tag=SetLocation] glib.var 0
execute store result entity @s Pos[1] double 0.001 run scoreboard players add @a[tag=SetLocation] glib.var2 0
execute store result entity @s Pos[2] double 0.001 run scoreboard players add @a[tag=SetLocation] glib.var3 0
execute at @s run tp @a[tag=SetLocation] ~ ~ ~
kill @s