# This function was automatically generated.

execute as @a[tag=glib.menu.debug.math.algebra,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.math.algebra] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.math.algebra] glib.menu.page 0
execute as @a[tag=glib.menu.debug.math.algebra,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.math.algebra,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.math.algebra,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.math.algebra,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.math.algebra] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.math.algebra] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.math.algebra] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.math.algebra] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.math.algebra,tag=glib.menu.debug.math] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.math.algebra] remove glib.menu.debug.math
tag @a[tag=glib.menu.debug.math.algebra.close] add glib.menu.debug.math
execute as @a[tag=glib.menu.debug.math.algebra.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.math.algebra.close] remove glib.menu.debug.math.algebra
tag @a[tag=glib.menu.debug.math.algebra.close] remove glib.menu.debug.math.algebra.close

tellraw @a[tag=glib.menu.debug.math.algebra] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.math.algebra,scores={glib.menu.page = 0},tag=!glib.debug.math.algebra.basis_rotation_3d] ["", {"text": "   basis_rotation_3d: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.math.algebra.basis_rotation_3d"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.math.algebra.basis_rotation_3d"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.math.algebra,scores={glib.menu.page = 0},tag=glib.debug.math.algebra.basis_rotation_3d] ["", {"text": "   basis_rotation_3d: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.math.algebra.basis_rotation_3d"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.math.algebra.basis_rotation_3d"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.math.algebra] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.math.algebra.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / math / algebra", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.math.algebra.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]