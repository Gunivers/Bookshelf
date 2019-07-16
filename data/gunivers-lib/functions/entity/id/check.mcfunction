# NAME: Check ID
# PATH: gunivers-lib:entity/id/check

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# INPUT:
# - TargetId (score)

# OUTPUT:
# - IdMatch (tag)
# - IdUpper (tag)
# - IdLower (tag)

# INIT
scoreboard objectives add Var1 dummy
scoreboard objectives add Id dummy
scoreboard objectives add TargetId dummy

# CODE:
#____________________________________________________________________________________________________

tag @e remove IdMatch
tag @e remove IdUpper
tag @e remove IdLower
tag @e remove IdChecker

scoreboard players operation @e Var1 = @s Id
scoreboard players operation @e Var1 -= @s TargetId
tag @e[scores={Var1=0}] add IdMatch
tag @e[scores={Var1=..-1}] add IdUpper
tag @e[scores={Var1=-1..}] add IdLower
tag @s add IdChecker

tellraw @a[tag=Debug,tag=Debug_Entity_Id_Check] ["",{"text":"DEBUG | ","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_Id_Check"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Entity Id Check","color":"green"}]
execute as @e run tellraw @a[tag=Debug,tag=Debug_Entity_Id_Check] ["",{"text":"CALCUL -> ","color":"gray"},{"text":"Id: ","color":"red"},{"score":{"name":"@s","objective":"Id"}},{"text":"   Result: ","color":"red"},{"score":{"name":"@s","objective":"Var1"}}]


