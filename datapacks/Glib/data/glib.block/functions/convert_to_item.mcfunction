scoreboard objectives add glib.blockId dummy [{"text":"GLib ","color":"gold"},{"text":"Block ID","color":"dark_gray"}]
scoreboard objectives add glib.itemId dummy [{"text":"GLib ","color":"gold"},{"text":"Item ID","color":"dark_gray"}]

execute if score @s glib.blockId matches 0..7491 run function glib.block:convert_to_item/nodes/0-7491
execute if score @s glib.blockId matches 7492..14425 run function glib.block:convert_to_item/nodes/7492-14425
execute if score @s glib.blockId matches 14426..21447 run function glib.block:convert_to_item/nodes/14426-21447
