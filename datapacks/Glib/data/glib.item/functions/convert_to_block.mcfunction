scoreboard objectives add glib.itemId dummy [{"text":"GLib ","color":"gold"},{"text":"Item ID","color":"dark_gray"}]
scoreboard objectives add glib.blockId dummy [{"text":"GLib ","color":"gold"},{"text":"Block ID","color":"dark_gray"}]

execute if score @s glib.itemId matches 1..365 run function glib.item:convert_to_block/nodes/1-365
execute if score @s glib.itemId matches 366..785 run function glib.item:convert_to_block/nodes/366-785
execute if score @s glib.itemId matches 786..1147 run function glib.item:convert_to_block/nodes/786-1147
