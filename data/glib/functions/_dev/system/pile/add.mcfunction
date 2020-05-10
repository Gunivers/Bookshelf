#AUTHOR: A~Z
#PATH: gunivers-lib/system/pile/add

#SYSTEM: Pile

#VERSION: 2.1
#MINECRAFT: 1.13

#REQUIREMENTS:
# - PILE (score dummy)
# - _PILE

#INPUT:
# - @s (entity)
# - pile PILE (fake player)

#OUTPUT: /

#CODE:
execute as @s if score @s _PILE matches 0.. run function gunivers-lib/system/pile/remove

execute as @e[scores={PILE=0..}] if score @s _PILE = pile PILE run scoreboard players add @s PILE 1

scoreboard players operation @s _PILE = pile PILE
scoreboard players set @s PILE 0