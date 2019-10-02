#AUTHOR: A~Z
#PATH: gunivers-lib/system/pile/init

#VERSION: 0.1
#MINECRAFT: 1.13

#REQUIREMENTS:
# - PILE (score dummy)

#INPUT:
# - pile (fake player)

#OUTPUT: /

#CODE:
execute as @e[scores={PILE=0..}] if score @s _PILE matches pile PILE run scoreboard players reset @s PILE
execute as @e[scores={PILE=0..}] if score @s _PILE matches pile PILE run scoreboard players reset @s _PILE