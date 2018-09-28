#AUTHOR: LeiRoF
#PATH: gunivers-lib/math/random

#NAME: Random

#VERSION: 2.0
#MINECRAFT: 1.13

#REQUIREMENTS:
# - Data (score dummy)

#INPUT: /

#OUTPUT: /

#CODE:
#____________________________________________________________________________________________________


scoreboard players add Glib_Random_Last Data 0
execute store result score Glib_Random_Seed Data run time query gametime
scoreboard players operation Glib_Random_Seed Data += Glib_Random_Last Data
scoreboard players operation Glib_Random_Seed Data %= 118998 Constant

scoreboard players operation @s Res = Glib_Random_Seed Data
scoreboard players operation @s Res *= 16807 Constant
scoreboard players operation @s Res += 307 Constant
scoreboard players operation @s Res %= 10000 Constant

scoreboard players operation Glib_Random_Last Data = @s Res

#tellraw @a ["",{"text":"[Debug] Result: ","color":"red"},{"score":{"name":"@s","objective":"Res"}}]
