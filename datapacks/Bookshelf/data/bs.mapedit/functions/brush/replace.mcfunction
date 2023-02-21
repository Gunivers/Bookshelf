#on recupre le block actulle

execute at @s run function bs.block:convert/block_to_id

#var tmp car ReaplceID sert ds plutieur cas 
scoreboard players operation @s ActualBlockID = @s bs.block.id
#Si le block est a remplacer on le remplace 
execute if score @s ActualBlockID = @s bs.original.id run scoreboard players operation @s bs.block.id = @s bs.replace.id
#Et on set le block 

execute if score @s ActualBlockID = @s bs.original.id run function bs.block:convert/id_to_block