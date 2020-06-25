scoreboard players operation @s glib.var0 *= -1 glib.const
scoreboard players operation @s glib.var1 *= -1 glib.const
scoreboard players operation @s glib.var2 *= -1 glib.const

#Apply on entity
execute if entity @s[type=!player] at @s run function glib_child:entity/move/by_vector/apply

#Apply on player
execute if entity @s[type=player] at @s run summon armor_stand ~ ~ ~ {Invisible:1,Tags:["Glib","Move_By_Vector"]}
execute if entity @s[type=player] at @s run tp @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] @s
execute if entity @s[type=player] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] VectorX = @s VectorX
execute if entity @s[type=player] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] VectorY = @s VectorY
execute if entity @s[type=player] at @s run scoreboard players operation @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] VectorZ = @s VectorZ
execute if entity @s[type=player] at @s as @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest] at @s run function glib_child:entity/move/by_vector/apply
execute if entity @s[type=player] at @s run tp @s @e[type=armor_stand,tag=Move_By_Vector,limit=1,sort=nearest]
kill @e[type=armor_stand,tag=Move_By_Vector]

scoreboard players operation @s glib.var0 *= -1 glib.const
scoreboard players operation @s glib.var1 *= -1 glib.const
scoreboard players operation @s glib.var2 *= -1 glib.const

tag @s add Glib_Back_to_last_pos
