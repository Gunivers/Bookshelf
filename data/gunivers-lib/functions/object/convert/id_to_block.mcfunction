
# INIT:
scoreboard objectives add ObjectId dummy


execute if score @s ObjectId matches ..511 run function gunivers-lib:object/convert/child/id_to_block/nodes/0-511
execute if score @s ObjectId matches 512.. run function gunivers-lib:object/convert/child/id_to_block/nodes/512-571