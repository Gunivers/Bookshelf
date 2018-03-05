# NAME: GetSpeed
# PATH: gunivers-lib:entity/getspeed

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13
 
# REQUIEREMENTS:
# - execution of gunivers-lib:entity/initgetspeed
 
# CHILD OF: gunivers-lib:entity/advanced/location/get

# OUTPUT:
# - Speed (score dummy)

# NOTE: Allow to get the speed of an entity.

# CODE:

execute as @s run function gunivers-lib:entity/advanced/location/get

tellraw @a ["",{"text":"-----------","color":"green"}]
tellraw @a ["",{"text":"x à t0 : ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]
tellraw @a ["",{"text":"y à t0 : ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]
tellraw @a ["",{"text":"z à t0 : ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]
tellraw @a ["",{"text":"x à t1 : ","color":"red"},{"score":{"name":"@s","objective":"Output1"}}]
tellraw @a ["",{"text":"y à t1 : ","color":"red"},{"score":{"name":"@s","objective":"Output2"}}]
tellraw @a ["",{"text":"z à t1 : ","color":"red"},{"score":{"name":"@s","objective":"Output3"}}]
scoreboard players operation @s Var1 -= @s Output1
execute as @s if score @s Var1 < 0 Constant run scoreboard players operation @s Var1 *= -1 Constant
tellraw @a ["",{"text":"dx : ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]
scoreboard players operation @s Var1 *= @s Var1

scoreboard players operation @s Var2 -= @s Output2
execute as @s if score @s Var2 < 0 Constant run scoreboard players operation @s Var2 *= -1 Constant
tellraw @a ["",{"text":"dy : ","color":"red"},{"score":{"name":"@s","objective":"Var2"}}]
scoreboard players operation @s Var2 *= @s Var2

scoreboard players operation @s Var3 -= @s Output3
execute as @s if score @s Var3 < 0 Constant run scoreboard players operation @s Var3 *= -1 Constant
tellraw @a ["",{"text":"dz : ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]
scoreboard players operation @s Var3 *= @s Var3


scoreboard players operation @s Var1 += @s Var2
scoreboard players operation @s Var1 += @s Var3


tellraw @a ["",{"text":"Entrée sqrt ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]

function gunivers-lib:math/sqrt

tellraw @a ["",{"text":"Sortie sqrt : ","color":"red"},{"score":{"name":"@s","objective":"Root"}}]

scoreboard players operation @s Speed = @s Root
scoreboard players operation @s Speed /= 1000 Constant

tellraw @a ["",{"text":"Norme : ","color":"red"},{"score":{"name":"@s","objective":"Speed"}}]
tellraw @a ["",{"text":"-----------","color":"green"}]

scoreboard players operation @s Var1 = @s Output1
scoreboard players operation @s Var2 = @s Output2
scoreboard players operation @s Var3 = @s Output3



