# NAME: Raycast Loop
# PATH: Gunivers-Lib:Utils/ExampleSystems/Raycasting/Loop
 
# AUTHOR: KubbyDev
 
# VERSION: 1.0
# MINECRAFT: 1.12.2
 
# REQUIEREMENTS: 
# - 
 
# INPUT: 
# -
 
# OUTPUT: 
# -

# NOTE:  
# -

# CONFIGURATION:
# -

# CODE:

execute @e[tag=Raycast] ~ ~ ~ function Gunivers-Lib:Entity/Vectors/Move

execute @e[tag=Collision] ~ ~ ~ execute @s[tag=Raycast] ~ ~ ~ function Gunivers-Lib:Entity/Location/Get
execute @e[tag=Collision] ~ ~ ~ execute @s[tag=Raycast] ~ ~ ~ tellraw @a {"text":"X: ","extra":[{"score":{"objective":"LocX","name":"@s"}},{"text":" | Y: "},{"score":{"objective":"LocY","name":"@s"}},{"text":" | Z: "},{"score":{"objective":"LocZ","name":"@s"}}]}
execute @e[tag=Collision] ~ ~ ~ kill @s[tag=Raycast]