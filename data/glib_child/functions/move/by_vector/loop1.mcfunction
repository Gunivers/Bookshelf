tag @s remove glib.move.factor

execute if entity @s[scores={glib.var4=1..}] run scoreboard players operation @s glib.var4 *= -1 glib.const
execute if score @s glib.var0 < @s glib.var4 run tag @s add glib.move.factor
execute if score @s glib.var1 < @s glib.var4 run tag @s add glib.move.factor
execute if score @s glib.var2 < @s glib.var4 run tag @s add glib.move.factor

execute if entity @s[scores={glib.var4=..-1}] run scoreboard players operation @s glib.var4 *= -1 glib.const
execute if score @s glib.var0 > @s glib.var4 run tag @s add glib.move.factor
execute if score @s glib.var1 > @s glib.var4 run tag @s add glib.move.factor
execute if score @s glib.var2 > @s glib.var4 run tag @s add glib.move.factor

scoreboard players operation @s[tag=glib.move.factor] glib.var3 *= 2 glib.const
scoreboard players operation @s[tag=glib.move.factor] glib.var0 /= 2 glib.const
scoreboard players operation @s[tag=glib.move.factor] glib.var1 /= 2 glib.const
scoreboard players operation @s[tag=glib.move.factor] glib.var2 /= 2 glib.const

# DEBUG
execute at @s[tag=glib.debug,tag=glib.debug.entity.move.by_vector] run summon falling_block ~ ~ ~ {BlockState:{Name:"oak_fence"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG


execute as @s[tag=glib.move.factor] at @s run function glib_child:move/by_vector/loop1
