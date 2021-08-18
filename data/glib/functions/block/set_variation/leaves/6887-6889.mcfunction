execute if score @s glib.blockVarId matches 6887 run setblock ~ ~ ~ comparator[facing=north,mode=subtract,powered=false]
execute if score @s glib.blockVarId matches 6888 run setblock ~ ~ ~ comparator[facing=south,mode=compare,powered=true]
execute if score @s glib.blockVarId matches 6889 run setblock ~ ~ ~ comparator[facing=south,mode=compare,powered=false]
