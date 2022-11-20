# This function was automatically generated.

execute as @a[tag=bs.menu.debug.math.algebra,tag=!bs.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.algebra] add bs.menu.active
scoreboard players add @a[tag=bs.menu.debug.math.algebra] bs.menu.page 0
execute as @a[tag=bs.menu.debug.math.algebra,tag=bs.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.math.algebra,tag=bs.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=bs.menu.debug.math.algebra,tag=bs.menu.nextPage] run scoreboard players add @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.math.algebra,tag=bs.menu.previousPage] run scoreboard players remove @s bs.menu.page 1
execute as @a[tag=bs.menu.debug.math.algebra] if score @s bs.menu.page matches ..-1 run scoreboard players set @s bs.menu.page 0
execute as @a[tag=bs.menu.debug.math.algebra] if score @s bs.menu.page matches 1.. run scoreboard players set @s bs.menu.page 0
tag @a[tag=bs.menu.debug.math.algebra] remove bs.menu.nextPage
tag @a[tag=bs.menu.debug.math.algebra] remove bs.menu.previousPage
execute as @a[tag=bs.menu.debug.math.algebra,tag=bs.menu.debug.math] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.algebra] remove bs.menu.debug.math
tag @a[tag=bs.menu.debug.math.algebra.close] add bs.menu.debug.math
execute as @a[tag=bs.menu.debug.math.algebra.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=bs.menu.debug.math.algebra.close] remove bs.menu.debug.math.algebra
tag @a[tag=bs.menu.debug.math.algebra.close] remove bs.menu.debug.math.algebra.close

tellraw @a[tag=bs.menu.debug.math.algebra] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=bs.menu.debug.math.algebra,scores={bs.menu.page = 0},tag=!bs.debug.math.algebra.basis_rotation_3d] ["", {"text": "   basis_rotation_3d: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.algebra.basis_rotation_3d"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.debug.math.algebra.basis_rotation_3d"}, "hoverEvent": {"action": "show_text", "contents": "Click to add the tag"}}]
tellraw @a[tag=bs.menu.debug.math.algebra,scores={bs.menu.page = 0},tag=bs.debug.math.algebra.basis_rotation_3d] ["", {"text": "   basis_rotation_3d: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.algebra.basis_rotation_3d"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove bs.debug.math.algebra.basis_rotation_3d"}, "hoverEvent": {"action": "show_text", "contents": "Click to remove the tag"}}]

tellraw @a[tag=bs.menu.debug.math.algebra] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.algebra.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / math / algebra", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add bs.menu.debug.math.algebra.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]