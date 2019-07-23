# INIT:
scoreboard objectives add BlockId dummy

execute if score @s BlockId matches ..511 run function gunivers-lib:object/convert/child/id_to_ridding_falling_block/nodes/0-511
execute if score @s BlockId matches 512.. run function gunivers-lib:object/convert/child/id_to_ridding_falling_block/nodes/512-571