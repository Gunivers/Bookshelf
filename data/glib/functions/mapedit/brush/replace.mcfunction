#on recupre le block actulle

execute at @s run function glib:block/convert/block_to_id

#var tmp car ReaplceID sert ds plutieur cas 
scoreboard players operation @s ActualBlockID = @s glib.blockId
#Si le block est a remplacer on le remplace 
execute if score @s ActualBlockID = @s glib.original.id run scoreboard players operation @s glib.blockId = @s glib.replace.id
#Et on set le block 

execute if score @s ActualBlockID = @s glib.original.id run function glib:block/convert/id_to_block