#AUTHOR: A~Z
#PATH: gunivers-lib/system/pile/remove

#SYSTEM: Pile

#VERSION: 2.1
#MINECRAFT: 1.13

#REQUIREMENTS:
# - PILE (score dummy)

#INPUT:
# - pile PILE (fake player)

#OUTPUT: /

#CODE:
execute as @e[scores={_PILE=0..}] if score @s _PILE = pile PILE run scoreboard players reset @s PILE
execute as @e[scores={_PILE=0..}] if score @s _PILE = pile PILE run scoreboard players reset @s _PILE