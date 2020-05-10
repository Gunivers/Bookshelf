#AUTHOR: A~Z
#PATH: gunivers-lib/system/pile/removeLastIn

#SYSTEM: Pile

#VERSION: 2.1
#MINECRAFT: 1.13

#REQUIREMENTS:
# - PILE (score dummy)
# - _PILE (score dummy)

#INPUT:
# - pile PILE (fake player)

#OUTPUT: /

#CODE:
execute as @e[scores={PILE=0..}] if score @s _PILE = pile PILE run scoreboard players remove @s PILE 1

scoreboard players reset @e[scores={PILE=..-1}] _PILE
scoreboard players reset @e[scores={PILE=..-1}] PILE