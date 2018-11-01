# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Loop2

# CHILD OF: Gunivers-Lib:Entity/Vector/Move

# CODE:

scoreboard players operation @s[scores={Var4=1..}] Var1 = @s Var7
scoreboard players operation @s[scores={Var4=1..}] Var2 = @s Var8
scoreboard players operation @s[scores={Var4=1..}] Var3 = @s Var9

# DEBUG
#tellraw @a[tag=Debug] ["",{"text":"\nOUTPUT2 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}}]
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT2 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]
#execute at @s[tag=Debug] ~ ~ ~ run particle endRod ~ ~ ~ 0 0 0 0 1 force
execute at @s[tag=Debug] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG

execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/location/child/move_by_vector/collision
execute at @s run function gunivers-lib:entity/location/child/move_by_vector/apply

scoreboard players remove @s Var4 1

tag @s remove Move-Loop2
tag @s[scores={Var4=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function gunivers-lib:entity/location/child/move_by_vector/loop2