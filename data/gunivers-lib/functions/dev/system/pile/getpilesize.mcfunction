#AUTHOR: A~Z
#PATH: gunivers-lib/system/pile/getpilesize

#SYSTEM: Pile

#VERSION: 2.1
#MINECRAFT: 1.13

#REQUIREMENTS:
# - PILE (score dummy)

#INPUT:
# - pile PILE (fake player)

#OUTPUT:
# - pile_size PILE (fake player)

#CODE:
scoreboard players set pile_size PILE 0
execute as @e[scores={PILE=0..}] if score @s _PILE = pile PILE run scoreboard players add pile_size PILE 1