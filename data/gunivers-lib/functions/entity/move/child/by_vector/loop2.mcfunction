# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_vector/loop2

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

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

execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/move/child/by_vector/collision

#Apply on entity
execute if entity @s[type=!player] at @s run function gunivers-lib:entity/move/child/by_vector/apply

#Apply on player
execute if entity @s[type=player] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Move_By_Vector"]}
execute if entity @s[type=player] at @s run tp @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] @s
execute if entity @s[type=player] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] VectorX = @s VectorX
execute if entity @s[type=player] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] VectorY = @s VectorY
execute if entity @s[type=player] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] VectorZ = @s VectorZ
execute if entity @s[type=player] at @s as @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] at @s run function gunivers-lib:entity/move/child/by_vector/apply
execute if entity @s[type=player] at @s run tp @s @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=Move_By_Vector]


scoreboard players remove @s Var4 1

execute as @s[scores={Var4=1..}] at @s run function gunivers-lib:entity/move/child/by_vector/loop2