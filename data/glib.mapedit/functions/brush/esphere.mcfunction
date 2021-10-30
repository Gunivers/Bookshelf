
#equoi sphere = r^2 = (x-a)^2+(y-b)^2+(z-b)^2

scoreboard players set @s SphereSum 0

#X
scoreboard players operation @s SphereCalc = @s Centre_X
scoreboard players operation @s SphereCalc -= @s Set_X
scoreboard players operation @s SphereCalc *= @s SphereCalc
scoreboard players operation @s SphereSum += @s SphereCalc

#Y
scoreboard players operation @s SphereCalc = @s Centre_Y
scoreboard players operation @s SphereCalc -= @s Set_Y
scoreboard players operation @s SphereCalc *= @s SphereCalc
scoreboard players operation @s SphereSum += @s SphereCalc

#Z
scoreboard players operation @s SphereCalc = @s Centre_Z
scoreboard players operation @s SphereCalc -= @s Set_Z
scoreboard players operation @s SphereCalc *= @s SphereCalc
scoreboard players operation @s SphereSum += @s SphereCalc

scoreboard players operation @s SphereCalc = @s Rayon
scoreboard players remove @s SphereCalc 1
scoreboard players operation @s SphereCalc *= @s SphereCalc 


execute if score @s SphereSum <= @s Rayon2 if score @s SphereSum >= @s SphereCalc run execute at @s run function glib.block:convert/id_to_block