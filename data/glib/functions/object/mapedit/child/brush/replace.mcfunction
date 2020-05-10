#on recupre le block actulle

execute at @s run function glib:object/convert/block/block_to_id

#var tmp car ReaplceID sert ds plutieur cas 
scoreboard players operation @s ActualBlockID = @s BlockId
#Si le block est a remplacer on le remplace 
execute if score @s ActualBlockID = @s OriginalId run scoreboard players operation @s BlockId = @s ReplaceId
#Et on set le block 

execute if score @s ActualBlockID = @s OriginalId run function glib:object/convert/block/id_to_block