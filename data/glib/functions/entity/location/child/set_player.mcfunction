execute store result entity @s Pos[0] double 1 run scoreboard players add @a[tag=tp] Var1 0
execute store result entity @s Pos[1] double 1 run scoreboard players add @a[tag=tp] Var2 0
execute store result entity @s Pos[2] double 1 run scoreboard players add @a[tag=tp] Var3 0
execute at @s run tp @a[tag=tp] ~ ~ ~
kill @s