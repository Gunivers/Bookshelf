tellraw @a[tag=bs.debug.view.aimed_block] [{"text":"> Bookshelf | ","color":"dark_aqua"},{"text":"Record from bs.view:aimed_block","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove bs.debug.view.aimed_block"},"hoverEvent":{"action":"show_text","contents":"Hide this debug"}}]
tellraw @a[tag=bs.debug.view.aimed_block] {"text":" Trajectory displayed using particles","color":"gray"}

execute as @a[tag=bs.debug.view.aimed_block] at @e[tag=bs.new] run function bs.core:debug/draw/cube

tellraw @a[tag=bs.debug.view.aimed_block] [{"text":"<","color":"dark_aqua"}]