# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:entity/location/child/move_by_vector/apply

# CHILD OF: gunivers-lib:entity/location/move_by_vector

# CODE:

execute at @s run function gunivers-lib:entity/location/accurate/get

tellraw @a[tag=Debug] ["",{"text":"----------\nX: "},{"score":{"name":"@s","objective":"LocX"}},{"text":"\nY: "},{"score":{"name":"@s","objective":"LocY"}},{"text":"\nZ: "},{"score":{"name":"@s","objective":"LocZ"}}]

execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s LocX += @s Var1
execute store result entity @s Pos[1] double 0.001 run scoreboard players operation @s LocY += @s Var2
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s LocZ += @s Var3


tellraw @a[tag=Debug] ["",{"text":"\nX: "},{"score":{"name":"@s","objective":"LocX"}},{"text":"\nY: "},{"score":{"name":"@s","objective":"LocY"}},{"text":"\nZ: "},{"score":{"name":"@s","objective":"LocZ"}}]