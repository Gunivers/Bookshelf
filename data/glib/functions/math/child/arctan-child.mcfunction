#Numerateur
scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 *= @s Var1

scoreboard players operation @s Var2 = @s Var3

scoreboard players operation @s Var3 *= @s Var1
scoreboard players operation @s Var3 /= 1000 Constant

scoreboard players operation @s Var2 += @s Var3

scoreboard players operation @s Res1 = @s Var1
scoreboard players operation @s Res1 *= 640 Constant

scoreboard players operation @s Res1 += @s Var2
scoreboard players operation @s Res1 *= 785 Constant

#Dénominateur
scoreboard players operation @s Var2 = @s Var1
scoreboard players operation @s Var2 *= 640 Constant

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 *= 1000 Constant

scoreboard players operation @s Var2 += @s Var3
scoreboard players add @s Var2 1000000

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 *= @s Var1
scoreboard players operation @s Var3 *= 640 Constant
scoreboard players operation @s Var3 /= 1000 Constant

scoreboard players operation @s Var2 += @s Var3

scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 *= @s Var1

scoreboard players operation @s Var2 += @s Var3

scoreboard players operation @s Var3 *= @s Var1
scoreboard players operation @s Var3 /= 1000 Constant

scoreboard players operation @s Var2 += @s Var3

#Division
scoreboard players operation @s Res1 /= @s Var2
scoreboard players operation @s Res1 *= 2 Constant
scoreboard players add @s Res1 1

scoreboard players operation @s Res1 *= 18000 Constant
scoreboard players operation @s Res1 /= Pi2 Constant
