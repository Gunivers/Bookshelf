
#On place un block en fonction du brush : 
#1 set 
#2 replace
#3 sphere
#4 esphere

execute if score @s BrushID matches 1 run function glib:object/mapedit/child/brush/set
execute if score @s BrushID matches 2 run function glib:object/mapedit/child/brush/replace
execute if score @s BrushID matches 3 run function glib:object/mapedit/child/brush/sphere
execute if score @s BrushID matches 4 run function glib:object/mapedit/child/brush/esphere

scoreboard players add @s Set_X 1

#Si on arive a la fin des X
execute if score @s Set_X > @s Set_Pos_xf run scoreboard players add @s Set_Z 1
execute if score @s Set_X > @s Set_Pos_xf run scoreboard players operation @s Set_X = @s Set_Pos_xd

#Si on arive a la fin des Z
execute if score @s Set_Z > @s Set_Pos_zf run scoreboard players add @s Set_Y 1
execute if score @s Set_Z > @s Set_Pos_zf run scoreboard players operation @s Set_Z = @s Set_Pos_zd

#Si on ariive a la fin des Y on a fini retoure dans le while pour en sortire


#On ce deplace

execute as @e[tag=spawnSET] at @s store result entity @s Pos[0] double 1 run scoreboard players get @s Set_X
execute as @e[tag=spawnSET] at @s store result entity @s Pos[1] double 1 run scoreboard players get @s Set_Y
execute as @e[tag=spawnSET] at @s store result entity @s Pos[2] double 1 run scoreboard players get @s Set_Z