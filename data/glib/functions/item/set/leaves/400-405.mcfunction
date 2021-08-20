execute if score @s glib.itemId matches 400 run summon item ~ ~ ~ {Item:{id:"minecraft:glass_bottle",Count:1b}}
execute if score @s glib.itemId matches 401 run summon item ~ ~ ~ {Item:{id:"minecraft:glass_pane",Count:1b}}
execute if score @s glib.itemId matches 402 run summon item ~ ~ ~ {Item:{id:"minecraft:glistering_melon_slice",Count:1b}}
execute if score @s glib.itemId matches 403 run summon item ~ ~ ~ {Item:{id:"minecraft:globe_banner_pattern",Count:1b}}
execute if score @s glib.itemId matches 404 run summon item ~ ~ ~ {Item:{id:"minecraft:glow_berries",Count:1b}}
execute if score @s glib.itemId matches 405 run summon item ~ ~ ~ {Item:{id:"minecraft:glow_ink_sac",Count:1b}}
execute at @s run scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
