#Numerateur
scoreboard players operation @s Var3 = @s Var1
scoreboard players operation @s Var3 *= @s Var1

scoreboard players operation @s Var2 = @s Var3

scoreboard players operation @s Var3 *= @s Var1
scoreboard players operation @s Var3 /= 1000 Constant

scoreboard players operation @s Var2 += @s Var3

scoreboard players operation @s Res = @s Var1
scoreboard players operation @s Res *= 640 Constant

scoreboard players operation @s Res += @s Var2
scoreboard players operation @s Res *= 785 Constant

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
scoreboard players operation @s Res /= @s Var2
scoreboard players operation @s Res *= 2 Constant
scoreboard players add @s Res 1

scoreboard players operation @s Res *= 18000 Constant
scoreboard players operation @s Res /= Pi2 Constant
