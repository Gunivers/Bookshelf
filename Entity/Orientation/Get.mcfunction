# NAME: Get Orientation
# PATH: Gunivers-Lib:Entity/Orientation/Get

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:Utils/Import/Orienation (Import file)

# INPUT:

# OUTPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# CODE:

summon armor_stand ~ ~ ~ {Tags:["GetOrientation"],NoGravity:1,Invisible:1,Small:1,Marker:1}
tp @e[type=armor_stand,tag=GetOrientation,c=1] @s
execute @e[type=armor_stand,tag=GetOrientation,c=1] ~ ~ ~ function Gunivers-Lib:Entity/Orientation/Child/Get-Slave

scoreboard players operation @s Phi = @e[type=armor_stand,tag=GetOrientation,c=1] Phi
scoreboard players operation @s Theta = @e[type=armor_stand,tag=GetOrientation,c=1] Theta
kill @e[type=armor_stand,tag=GetOrientation,c=1]
