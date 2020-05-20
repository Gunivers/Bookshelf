#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib:entity/id/check
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#id
# Note:

#__________________________________________________
# PARAMETERS

# Output: IdMatch (tag): On every entities that have the same Id as @s TargetId
# Output: IdUpper (tag): On every entities that have an Id socre upper than @s TargetId
# Output: IdUpper (tag): On every entities that have an Id socre lower than @s TargetId
# Output: IdChecker (tag): On @s

#__________________________________________________
# INIT

scoreboard objectives add Id dummy
scoreboard objectives add TargetId dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e remove IdMatch
tag @e remove IdUpper
tag @e remove IdLower
tag @e remove IdChecker

scoreboard players operation @e Id -= @s TargetId
tag @e[scores={Id=0}] add IdMatch
tag @e[scores={Id=..-1}] add IdLower
tag @e[scores={Id=-1..}] add IdUpper
scoreboard players operation @e Id += @s TargetId
tag @s add IdChecker

# Start Debug
execute if entity @a[tag=Glib_Debug_entity.id.check] run tellraw @a[tag=Glib_Debug] ["",{"text":"[Glib_Debug] ","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove Glib_Debug_entity.id.check"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Entity Id Check","color":"green"}]
execute if entity @a[tag=Glib_Debug_entity.id.check] as @e[tag=IdChecker] run tellraw @a[tag=Glib_Debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":"   Checker","color":"red"}]
execute if entity @a[tag=Glib_Debug_entity.id.check] as @e[tag=IdMatch,tag=!IdChecker] run tellraw @a[tag=Glib_Debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":"   Match","color":"red"}]
execute if entity @a[tag=Glib_Debug_entity.id.check] as @e[tag=IdUpper,tag=!IdChecker] run tellraw @a[tag=Glib_Debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":"   Upper","color":"red"}]
execute if entity @a[tag=Glib_Debug_entity.id.check] as @e[tag=IdLower,tag=!IdChecker] run tellraw @a[tag=Glib_Debug] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":"   Lower","color":"red"}]
# End Debug
