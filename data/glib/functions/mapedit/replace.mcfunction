
# NAME: replace
# PATH: glib:mapedit/replace

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
#   glib.original.id (score dummy)

# - Block ID :  ID of the new block
#	glib.blockId (score dummy)

#
# OUTPUT:
# - If the block is egale to glib.original.id we replace them by glib.replace.id

# NOTE:
# To take the postion you can use : function glib:mapedit/pos1 and function glib:mapedit/pos1


#Ini

scoreboard objectives add BrushID dummy [{"text":"GLib ","color":"gold"},{"text":"BrushID","color":"dark_gray"}]

#ReplaceID  id du nouveaux block placer
scoreboard objectives add glib.replace.id dummy  [{"text":"GLib ","color":"gold"},{"text":"Replace ID","color":"dark_gray"}]

# id du block a remplacer
scoreboard objectives add glib.original.id dummy [{"text":"GLib ","color":"gold"},{"text":"Original ID","color":"dark_gray"}]

scoreboard objectives add ActualBlockID dummy [{"text":"GLib ","color":"gold"},{"text":"Actual Block ID","color":"dark_gray"}]
#--------------------

#On initlise tout (factorisation )

function glib:mapedit/set/ini


#id du nouveaux block
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] glib.replace.id = @s glib.blockId
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] glib.blockId = @s glib.blockId
#ID du block a remplacer
execute as @s run scoreboard players operation @e[tag=spawnSET,limit=1,sort=nearest] glib.original.id = @s glib.original.id

#1 corespon au setblock
execute as @s run scoreboard players set @e[tag=spawnSET,limit=1,sort=nearest] BrushID 2


execute as @e[tag=spawnSET] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s Set_X
execute as @e[tag=spawnSET] at @s store result entity @s Pos[1] double 1 run scoreboard players get @s Set_Y
execute as @e[tag=spawnSET] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s Set_Z

#On ajout 1 au nb de set en cour
scoreboard players add setCount Set_Option 1

#tag @e[tag=spawnSET] remove spawnSET

#On lance toute la procedure
function glib:mapedit/set/repeate
