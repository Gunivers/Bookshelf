#AUTHOR: A~Z
#PATH: gunivers-lib/system/pile/remove

#SYSTEM: Pile

#VERSION: 2.1
#MINECRAFT: 1.13

#REQUIREMENTS:
# - PILE (score dummy)
# - _PILE (score dummy)

#INPUT: @s (entity)
#OUTPUT: /

#CODE:
execute as @s if score @s PILE matches 0.. run scoreboard players operation TEMP PILE = @s PILE
execute as @s if score @s PILE matches 0.. run scoreboard players operation _TEMP PILE = @s _PILE

execute if score @s PILE matches 0.. run execute as @e[scores={PILE=0..}] if score @s _PILE = _TEMP PILE if score @s PILE > TEMP PILE run scoreboard players remove @s PILE 1

execute as @s if score @s PILE matches 0.. run scoreboard players reset @s PILE