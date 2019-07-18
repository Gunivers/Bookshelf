# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_vector/loop2

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

# CODE:

# DEBUG
execute at @s[tag=Debug] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG
tag @s remove CollisionTest
tag @s[tag=CollisionFront,tag=!Collision] add CollisionTest
execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/move/child/by_vector/collision_detect_front
tag @s remove Collision
execute as @s[scores={Collision=1..},tag=CollisionFront] at @s run function gunivers-lib:entity/move/child/by_vector/collision
execute as @s[scores={Collision=1..},tag=CollisionTest] at @s run function gunivers-lib:entity/move/child/by_vector/collision

#Apply on entity
scoreboard players operation @s Var1 = @s Var7
scoreboard players operation @s Var2 = @s Var8
scoreboard players operation @s Var3 = @s Var9

execute if entity @s[type=!player,scores={Var4=1..}] at @s run function gunivers-lib:entity/move/child/by_vector/apply

#Apply on player
execute if entity @s[type=player,scores={Var4=1..}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Move_By_Vector"]}
execute if entity @s[type=player,scores={Var4=1..}] at @s run tp @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] @s
execute if entity @s[type=player,scores={Var4=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] Var1 = @s Var1
execute if entity @s[type=player,scores={Var4=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] Var2 = @s Var2
execute if entity @s[type=player,scores={Var4=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] Var3 = @s Var3
execute if entity @s[type=player,scores={Var4=1..}] at @s as @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] at @s run function gunivers-lib:entity/move/child/by_vector/apply
execute if entity @s[type=player,scores={Var4=1..}] at @s run tp @s @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=Move_By_Vector]


scoreboard players remove @s Var4 1

execute as @s[scores={Var4=1..}] at @s run function gunivers-lib:entity/move/child/by_vector/loop2