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

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
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

execute as @e run scoreboard players operation @s Var1 = @s Id
scoreboard players operation @e Var1 -= @s TargetId
tag @e[scores={Var1=0}] add IdMatch
tag @e[scores={Var1=..-1}] add IdUpper
tag @e[scores={Var1=-1..}] add IdLower
tag @s add IdChecker

tellraw @a[tag=Glib_Debug,tag=Debug_Entity_Id_Check] ["",{"text":"█ DEBUG █ ","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_Id_Check"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Entity Id Check","color":"green"}]
execute as @e[tag=IdChecker] run tellraw @a[tag=Glib_Debug,tag=Debug_Entity_Id_Check] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":"   Checker","color":"red"}]
execute as @e[tag=IdMatch,tag=!IdChecker] run tellraw @a[tag=Glib_Debug,tag=Debug_Entity_Id_Check] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":"   Match","color":"red"}]
execute as @e[tag=IdUpper,tag=!IdChecker] run tellraw @a[tag=Glib_Debug,tag=Debug_Entity_Id_Check] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":"   Upper","color":"red"}]
execute as @e[tag=IdLower,tag=!IdChecker] run tellraw @a[tag=Glib_Debug,tag=Debug_Entity_Id_Check] ["",{"text":"ENTITY -> ","color":"gray"},{"text":"Name: ","color":"red"},{"selector":"@s"},{"text":"   Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}},{"text":"   Lower","color":"red"}]
