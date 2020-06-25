tag @s remove FactorIncrease

execute if entity @s[scores={glib.var4=1..}] run scoreboard players operation @s glib.var4 *= -1 glib.const
execute if score @s glib.var0 < @s glib.var4 run tag @s add FactorIncrease
execute if score @s glib.var1 < @s glib.var4 run tag @s add FactorIncrease
execute if score @s glib.var2 < @s glib.var4 run tag @s add FactorIncrease

execute if entity @s[scores={glib.var4=..-1}] run scoreboard players operation @s glib.var4 *= -1 glib.const
execute if score @s glib.var0 > @s glib.var4 run tag @s add FactorIncrease
execute if score @s glib.var1 > @s glib.var4 run tag @s add FactorIncrease
execute if score @s glib.var2 > @s glib.var4 run tag @s add FactorIncrease

scoreboard players operation @s[tag=FactorIncrease] glib.var3 *= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var0 /= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var1 /= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var2 /= 2 glib.const

# DEBUG
execute at @s[tag=glib.debug,tag=glib.debug.entity.move.by_vector] run summon falling_block ~ ~ ~ {BlockState:{Name:"oak_fence"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG


execute as @s[tag=FactorIncrease] at @s run function glib_child:entity/move/by_vector/loop1
