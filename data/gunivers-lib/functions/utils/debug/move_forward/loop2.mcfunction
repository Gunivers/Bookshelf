tellraw @a ["",{"text":" | ","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Move_Forward"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Loop 2: ","color":"gray"},{"text":"Factor: ","color":"red"},{"score":{"name":"@s","objective":"Var4"}},{"text":".   Front: ","color":"red"},{"score":{"name":"@s","objective":"Var3"}}]

execute at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @s run summon falling_block ~ ~-0.5 ~-0.45 {BlockState:{Name:"stone_button"},NoGravity:1,Time:50,Tags:["Debug"]}