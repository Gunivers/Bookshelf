# DEBUG
execute at @s[tag=Glib_Debug,tag=Glib_Debug_entity.move.by_vector] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG

tag @s remove CollisionTest
tag @s[tag=CollisionFront,tag=!Collision] add CollisionTest
execute as @s[scores={Collision=1..}] at @s run function glib:entity/move/child/by_vector/collision_detect_front
tag @s remove Collision
execute as @s[scores={Collision=1..},tag=CollisionFront] at @s run function glib:entity/move/child/by_vector/collision
execute as @s[scores={Collision=1..},tag=CollisionTest] at @s run function glib:entity/move/child/by_vector/collision

#Apply on entity
scoreboard players operation @s glib.var = @s glib.var7
scoreboard players operation @s glib.var2 = @s glib.var8
scoreboard players operation @s glib.var3 = @s glib.var9

execute if entity @s[type=!player,scores={glib.var4=1..}] at @s run function glib:entity/move/child/by_vector/apply

#Apply on player
execute if entity @s[type=player,scores={glib.var4=1..}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Glib","Move_By_Vector"]}
execute if entity @s[type=player,scores={glib.var4=1..}] at @s run tp @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] @s
execute if entity @s[type=player,scores={glib.var4=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] glib.var = @s glib.var
execute if entity @s[type=player,scores={glib.var4=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] glib.var2 = @s glib.var2
execute if entity @s[type=player,scores={glib.var4=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] glib.var3 = @s glib.var3
execute if entity @s[type=player,scores={glib.var4=1..}] at @s as @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] at @s run function glib:entity/move/child/by_vector/apply
execute if entity @s[type=player,scores={glib.var4=1..}] at @s run tp @s @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=Move_By_Vector]


scoreboard players remove @s glib.var4 1

execute as @s[scores={glib.var4=1..}] at @s run function glib:entity/move/child/by_vector/loop2
