# LGdir Main

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Gunivers-Lib:System/LGdir/Main (function)

# Input values: None

# Output values: None


effect @e[tag=DirMoving] glowing 1 1 true
execute @e[tag=DirMoving] ~ ~ ~ particle fireworksSpark ~ ~ ~ 0 0 0 0 1 force
execute @e[tag=DirCollisionX] ~ ~ ~ say Collision X
execute @e[tag=DirCollisionY] ~ ~ ~ say Collision Y
execute @e[tag=DirCollisionZ] ~ ~ ~ say Collision Z
execute @e[tag=DirMoving] ~ ~ ~ execute @s[tag=!TestOld] ~ ~ ~ tellraw @a ["",{"text":"----------\n"},{"text":" Phi: "},{"score":{"name":"@e[c=1]","objective":"Phi"}},{"text":" Theta: "},{"score":{"name":"@e[c=1]","objective":"Theta"}},{"text":"\n VectorX: "},{"score":{"name":"@e[c=1]","objective":"VectorX"}},{"text":" Vector Y: "},{"score":{"name":"@e[c=1]","objective":"VectorY"}},{"text":" Vector Z: "},{"score":{"name":"@e[c=1]","objective":"VectorZ"}},{"text":"\n----------"}]
scoreboard players tag @e[tag=DirMoving] add TestOld