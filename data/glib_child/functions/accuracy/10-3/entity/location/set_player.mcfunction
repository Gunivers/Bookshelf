execute store result entity @s Pos[0] double 0.001 run scoreboard players add @a[tag=glib.location.set] glib.var0 0
execute store result entity @s Pos[1] double 0.001 run scoreboard players add @a[tag=glib.location.set] glib.var1 0
execute store result entity @s Pos[2] double 0.001 run scoreboard players add @a[tag=glib.location.set] glib.var2 0
execute at @s run tp @a[tag=glib.location.tp] ~ ~ ~
kill @s
