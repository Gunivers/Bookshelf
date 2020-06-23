#Numerateur
scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s glib.var3 *= @s glib.var

scoreboard players operation @s glib.var2 = @s glib.var3

scoreboard players operation @s glib.var3 *= @s glib.var
scoreboard players operation @s glib.var3 /= 1000 glib.const

scoreboard players operation @s glib.var2 += @s glib.var3

scoreboard players operation @s glib.res = @s glib.var
scoreboard players operation @s glib.res *= 640 glib.const

scoreboard players operation @s glib.res += @s glib.var2
scoreboard players operation @s glib.res *= 785 glib.const

#Dénominateur
scoreboard players operation @s glib.var2 = @s glib.var
scoreboard players operation @s glib.var2 *= 640 glib.const

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s glib.var3 *= 1000 glib.const

scoreboard players operation @s glib.var2 += @s glib.var3
scoreboard players add @s glib.var2 1000000

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s glib.var3 *= @s glib.var
scoreboard players operation @s glib.var3 *= 640 glib.const
scoreboard players operation @s glib.var3 /= 1000 glib.const

scoreboard players operation @s glib.var2 += @s glib.var3

scoreboard players operation @s glib.var3 = @s glib.var
scoreboard players operation @s glib.var3 *= @s glib.var

scoreboard players operation @s glib.var2 += @s glib.var3

scoreboard players operation @s glib.var3 *= @s glib.var
scoreboard players operation @s glib.var3 /= 1000 glib.const

scoreboard players operation @s glib.var2 += @s glib.var3

#Division
scoreboard players operation @s glib.res /= @s glib.var2
scoreboard players operation @s glib.res *= 2 glib.const
scoreboard players add @s glib.res 1

scoreboard players operation @s glib.res *= 18000 glib.const
scoreboard players operation @s glib.res /= Pi2 glib.const
