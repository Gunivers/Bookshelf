tag @s remove FactorIncrease

execute if entity @s[scores={glib.var5=1..}] run scoreboard players operation @s glib.var5 *= -1 glib.const
execute if score @s glib.var < @s glib.var5 run tag @s add FactorIncrease
execute if score @s glib.var2 < @s glib.var5 run tag @s add FactorIncrease
execute if score @s glib.var3 < @s glib.var5 run tag @s add FactorIncrease

execute if entity @s[scores={glib.var5=..-1}] run scoreboard players operation @s glib.var5 *= -1 glib.const
execute if score @s glib.var > @s glib.var5 run tag @s add FactorIncrease
execute if score @s glib.var2 > @s glib.var5 run tag @s add FactorIncrease
execute if score @s glib.var3 > @s glib.var5 run tag @s add FactorIncrease

scoreboard players operation @s[tag=FactorIncrease] glib.var4 *= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var /= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var2 /= 2 glib.const
scoreboard players operation @s[tag=FactorIncrease] glib.var3 /= 2 glib.const

# DEBUG
execute at @s[tag=Glib_Debug,tag=Glib_Debug_entity.move.by_vector] run summon falling_block ~ ~ ~ {BlockState:{Name:"oak_fence"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG


execute as @s[tag=FactorIncrease] at @s run function glib:entity/move/child/by_vector/loop1
