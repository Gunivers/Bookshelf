
# NAME: replace
# PATH: bs.mapedit:replace

# AUTHOR: xam74er1

# VERSION: 0.1
# MINECRAFT: 1.14.X

# INPUT:
# - Location 1 :
#	- Pos_xd (score dummy)
#	- Pos_yd (score dummy)
# 	- Pos_zd (score dummy)

# - Location 2 :
#	- Pos_xf (score dummy)
#	- Pos_yf (score dummy)
# 	- Pos_zf (score dummy)

# - Original ID: ID of the block who need to replace
#   bs.original.id (score dummy)

# - Block ID :  ID of the new block
#	bs.block.id (score dummy)

#
# OUTPUT:
# - If the block is egale to bs.original.id we replace them by bs.replace.id

# NOTE:
# To take the postion you can use : function bs.mapedit:pos1 and function bs.mapedit:pos1


#Ini

scoreboard objectives add BrushID dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"BrushID","color":"aqua"}]

#ReplaceID  id du nouveaux block placer
scoreboard objectives add bs.replace.id dummy  [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Replace ID","color":"aqua"}]

# id du block a remplacer
scoreboard objectives add bs.original.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Original ID","color":"aqua"}]

scoreboard objectives add ActualBlockID dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Actual Block ID","color":"aqua"}]
#--------------------

#On initlise tout (factorisation )

function bs.mapedit:set/ini


#id du nouveaux block
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] bs.replace.id = @s bs.block.id
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] bs.block.id = @s bs.block.id
#ID du block a remplacer
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] bs.original.id = @s bs.original.id

#1 corespon au setblock
execute as @s run scoreboard players set @e[tag=spawnSET,limit=1,sort=nearest] BrushID 2


execute as @e[tag=spawnSET] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s Set_X
execute as @e[tag=spawnSET] at @s store result entity @s Pos[1] double 1 run scoreboard players get @s Set_Y
execute as @e[tag=spawnSET] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s Set_Z

#On ajout 1 au nb de set en cour
scoreboard players add setCount Set_Option 1

#tag @e[tag=spawnSET] remove spawnSET

#On lance toute la procedure
function bs.mapedit:set/repeate
