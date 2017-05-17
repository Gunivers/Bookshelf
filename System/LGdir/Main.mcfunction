# LGdir Main

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Gunivers-Lib:Entity/Apply/Move (function)
# - Gunivers-Lib:Entity/Apply/Collision (function)

# Input values: None

# Output values: None



execute @e[tag=DirMoving] ~ ~ ~ function Gunivers-Lib:Entity/Apply/Move
execute @e[tag=DirMoving,score_DirCollision_min=1] ~ ~ ~ function Gunivers-Lib:Entity/Apply/Collision