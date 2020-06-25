#Numerateur
scoreboard players operation @s glib.var2 = @s glib.var0
scoreboard players operation @s glib.var2 *= @s glib.var0

scoreboard players operation @s glib.var1 = @s glib.var2

scoreboard players operation @s glib.var2 *= @s glib.var0
scoreboard players operation @s glib.var2 /= 1000 glib.const

scoreboard players operation @s glib.var1 += @s glib.var2

scoreboard players operation @s glib.res0 = @s glib.var0
scoreboard players operation @s glib.res0 *= 640 glib.const

scoreboard players operation @s glib.res0 += @s glib.var1
scoreboard players operation @s glib.res0 *= 785 glib.const

#Dénominateur
scoreboard players operation @s glib.var1 = @s glib.var0
scoreboard players operation @s glib.var1 *= 640 glib.const

scoreboard players operation @s glib.var2 = @s glib.var0
scoreboard players operation @s glib.var2 *= 1000 glib.const

scoreboard players operation @s glib.var1 += @s glib.var2
scoreboard players add @s glib.var1 1000000

scoreboard players operation @s glib.var2 = @s glib.var0
scoreboard players operation @s glib.var2 *= @s glib.var0
scoreboard players operation @s glib.var2 *= 640 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const

scoreboard players operation @s glib.var1 += @s glib.var2

scoreboard players operation @s glib.var2 = @s glib.var0
scoreboard players operation @s glib.var2 *= @s glib.var0

scoreboard players operation @s glib.var1 += @s glib.var2

scoreboard players operation @s glib.var2 *= @s glib.var0
scoreboard players operation @s glib.var2 /= 1000 glib.const

scoreboard players operation @s glib.var1 += @s glib.var2

#Division
scoreboard players operation @s glib.res0 /= @s glib.var1
scoreboard players operation @s glib.res0 *= 2 glib.const
scoreboard players add @s glib.res0 1

scoreboard players operation @s glib.res0 *= 18000 glib.const
scoreboard players operation @s glib.res0 /= Pi2 glib.const
