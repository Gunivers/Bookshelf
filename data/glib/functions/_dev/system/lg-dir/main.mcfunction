# LGdir Main

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Requirement:
# - Glib:Entity/Apply/Move (function)
# - Glib:Entity/Apply/Collision (function)

# Input values: None

# Output values: None



execute @e[tag=DirMoving] ~ ~ ~ function Glib:Entity/Set/Movement
execute @e[tag=DirMoving,score_DirCollision_min=1] ~ ~ ~ function Glib:Entity/Set/Collision