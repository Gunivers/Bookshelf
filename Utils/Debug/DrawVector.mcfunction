# NAME: Draw Vector
# PATH: Gunivers-Lib:Utils/Debug/DrawVector

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# INPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:

# NOTE:
# This function will draw the input vector with particles with a scale of 2/1000 (if the vector length is 1000 then the drawn vector will be 2 blocks long)

# CODE:

summon armor_stand ~ ~ ~ {Tags:["DebugDrawVector"],NoGravity:1,Invisible:1}

scoreboard players set @e[type=armor_stand,tag=DebugDrawVector] VectorSpeed 40
scoreboard players operation @e[type=armor_stand,tag=DebugDrawVector] VectorX = @s VectorX
scoreboard players operation @e[type=armor_stand,tag=DebugDrawVector] VectorY = @s VectorY
scoreboard players operation @e[type=armor_stand,tag=DebugDrawVector] VectorZ = @s VectorZ

execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ function Gunivers-Lib:Entity/Location/Basic/Move
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ function Gunivers-Lib:Entity/Location/Basic/Move
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ function Gunivers-Lib:Entity/Location/Basic/Move
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ function Gunivers-Lib:Entity/Location/Basic/Move
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ function Gunivers-Lib:Entity/Location/Basic/Move
execute @e[type=armor_stand,tag=DebugDrawVector] ~ ~ ~ particle endRod ~ ~ ~ 0 0 0 0 1 force

kill @e[type=armor_stand,tag=DebugDrawVector]
