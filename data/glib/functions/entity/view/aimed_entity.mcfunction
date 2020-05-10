# NAME: Aimed entity
# PATH: glib:entity/view/aimed_entity

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Id (module)
# - Vars (module)

# NOTE:
#Allows to give the AimedEntity tag to the entity targeted by the executing entity. The targeted entity retrieves the ID of the executing entity in the scoreboard ParentId.

# INIT:
scoreboard objectives add Var1 dummy

# CODE:
#____________________________________________________________________________________________________

scoreboard players operation @s TargetId = @s Id
tag @s add Executor
function glib:entity/id/check_parent
kill @e[tag=AimedEntity,tag=ParentIdMatch]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,Marker:1,Tags:["Glib","NewRayCastEntity"]}
tp @e[tag=NewRayCastEntity] @s
execute at @s run tp @e[tag=NewRayCastEntity] ~ ~1.7 ~

# CONFIG: Var1 -> Range*10 (10 blocs -> Var1 = 100)
scoreboard players set @e[tag=NewRayCastEntity] Var1 1000
# END CONFIG
execute as @e[tag=NewRayCastEntity] at @s run function glib:entity/view/child/aimed_entity_raycast
execute as @e[tag=NewRayCastEntity] at @s run tag @e[tag=!NewRayCastEntity,distance=..0.1,sort=nearest,limit=1] add AimedEntity
execute at @e[tag=NewRayCastEntity] run scoreboard players operation @e[tag=AimedEntity] ParentId = @s Id
kill @e[tag=NewRayCastEntity]
tag @s remove Executor