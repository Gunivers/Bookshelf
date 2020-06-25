# DEBUG
execute at @s[tag=glib.debug,tag=glib.debug.entity.move.by_vector] run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG

tag @s remove CollisionTest
tag @s[tag=CollisionFront,tag=!Collision] add CollisionTest
execute as @s[scores={Collision=1..}] at @s run function glib:entity/move/zzz_child/by_vector/collision_detect_front
tag @s remove Collision
execute as @s[scores={Collision=1..},tag=CollisionFront] at @s run function glib:entity/move/zzz_child/by_vector/collision
execute as @s[scores={Collision=1..},tag=CollisionTest] at @s run function glib:entity/move/zzz_child/by_vector/collision

#Apply on entity
scoreboard players operation @s glib.var0 = @s glib.var6
scoreboard players operation @s glib.var1 = @s glib.var7
scoreboard players operation @s glib.var2 = @s glib.var8

execute if entity @s[type=!player,scores={glib.var3=1..}] at @s run function glib:entity/move/zzz_child/by_vector/apply

#Apply on player
execute if entity @s[type=player,scores={glib.var3=1..}] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Glib","Move_By_Vector"]}
execute if entity @s[type=player,scores={glib.var3=1..}] at @s run tp @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] @s
execute if entity @s[type=player,scores={glib.var3=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] glib.var0 = @s glib.var0
execute if entity @s[type=player,scores={glib.var3=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] glib.var1 = @s glib.var1
execute if entity @s[type=player,scores={glib.var3=1..}] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] glib.var2 = @s glib.var2
execute if entity @s[type=player,scores={glib.var3=1..}] at @s as @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] at @s run function glib:entity/move/zzz_child/by_vector/apply
execute if entity @s[type=player,scores={glib.var3=1..}] at @s run tp @s @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=Move_By_Vector]


scoreboard players remove @s glib.var3 1

execute as @s[scores={glib.var3=1..}] at @s run function glib:entity/move/zzz_child/by_vector/loop2
