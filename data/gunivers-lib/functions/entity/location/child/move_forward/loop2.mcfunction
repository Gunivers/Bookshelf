# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Loop2

# CHILD OF: Gunivers-Lib:Entity/Vector/Move

# CODE:

scoreboard players operation @s[scores={Var4=1..}] Var3 = @s Var7

# DEBUG
#tellraw @a[tag=Debug] ["",{"text":"\nOUTPUT2 -> ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}}]
#tellraw @a[tag=Debug] ["",{"text":"OUTPUT2 -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"Var2"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]
#execute at @s[tag=Debug] ~ ~ ~ run particle endRod ~ ~ ~ 0 0 0 0 1 force
execute at @s[tag=Debug] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG

execute at @s run function gunivers-lib:entity/location/child/move_forward/apply
execute at @s[scores={Collision=1..}] run function gunivers-lib:entity/location/child/move_forward/collision_detect_x
execute at @s[scores={Collision=1..}] run function gunivers-lib:entity/location/child/move_forward/collision_detect_y
execute at @s[scores={Collision=1..}] run function gunivers-lib:entity/location/child/move_forward/collision_detect_z

#execute at @s[scores={Collision=1..}] run function gunivers-lib:entity/location/child/move_forward/collision

scoreboard players remove @s Var4 1

tag @s remove Move-Loop2
tag @s[scores={Var4=1..}] add Move-Loop2
execute as @s[tag=Move-Loop2] at @s run function gunivers-lib:entity/location/child/move_forward/loop2