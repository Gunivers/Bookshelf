#System: Projectile Manager

#Author: KubbyDev
#Contributors:
# - A~Z

# Projectiles Orientation change based on the inaccuracy of the weapon

# Horizontal orientation
#Generates a random number betweem -4 and 4 and multiplies it by the inaccuracy
execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] run scoreboard players operation @s Var1 = @e[tag=Random,scores={Random=1..9},limit=1,sort=random] Random
scoreboard players remove @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] Var1 5
execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] run scoreboard players operation @s Var1 *= @s Glib_projectile_Inaccuracy

execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] store result score @s Var2 run data get entity @s Rotation[0] 100
execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] run scoreboard players operation @s Var2 += @s Var1
execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s Var2

# Vertical orientation
execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] run scoreboard players operation @s Var1 = @e[tag=Random,scores={Random=1..9},limit=1,sort=random] Random
scoreboard players remove @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] Var1 5
execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] run scoreboard players operation @s Var1 *= @s Glib_projectile_Inaccuracy

execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] store result score @s Var2 run data get entity @s Rotation[1] 100
execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] run scoreboard players operation @s Var2 += @s Var1
execute as @e[tag=Projectile,scores={Glib_projectile_Inaccuracy=1..}] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s Var2

scoreboard players set @e[tag=Projectile] Glib_projectile_Inaccuracy 0

#Random is Used to get a random number. There are 10 armor_stands with Random scores from 1 to 10