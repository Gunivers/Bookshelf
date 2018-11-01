#AUTHOR: A~Z
#PATH: gunivers-lib/system/pile/init

#SYSTEM: Pile

#VERSION: 2.1
#MINECRAFT: 1.13

#REQUIREMENTS: /

#INPUT: /
#OUTPUT: /

#CODE:
scoreboard objectives add PILE dummy
scoreboard objectives add _PILE dummy

scoreboard players set pile_size PILE 0
scoreboard players set pile_count PILE 0

scoreboard players reset @e PILE
scoreboard players reset @e _PILE