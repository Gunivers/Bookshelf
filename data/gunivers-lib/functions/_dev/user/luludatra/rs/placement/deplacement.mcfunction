
# SYSTEME PLACEMENT/DEPLACEMENT
# Fonction qui déplace l'ArmorStand Centre.
# by Luludatra

# -------------------------------------------------------------

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 1

execute @p[rym=46,ry=135] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=1,score_tellraw_dir=1] ~-0.1 ~ ~
execute @p[rym=136,ry=225] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=1,score_tellraw_dir=1] ~ ~ ~-0.1
execute @p[rym=226,ry=315] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=1,score_tellraw_dir=1] ~0.1 ~ ~
execute @p[rym=-44,ry=45] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=1,score_tellraw_dir=1] ~ ~ ~0.1

execute @p[rym=46,ry=135] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=2,score_tellraw_dir=2] ~ ~ ~-0.1
execute @p[rym=136,ry=225] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=2,score_tellraw_dir=2] ~0.1 ~ ~
execute @p[rym=226,ry=315] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=2,score_tellraw_dir=2] ~ ~ ~0.1
execute @p[rym=-44,ry=45] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=2,score_tellraw_dir=2] ~-0.1 ~ ~

execute @p[rym=46,ry=135] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=3,score_tellraw_dir=3] ~0.1 ~ ~
execute @p[rym=136,ry=225] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=3,score_tellraw_dir=3] ~ ~ ~0.1
execute @p[rym=226,ry=315] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=3,score_tellraw_dir=3] ~-0.1 ~ ~
execute @p[rym=-44,ry=45] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=3,score_tellraw_dir=3] ~ ~ ~-0.1

execute @p[rym=46,ry=135] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=4,score_tellraw_dir=4] ~ ~ ~0.1
execute @p[rym=136,ry=225] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=4,score_tellraw_dir=4] ~-0.1 ~ ~
execute @p[rym=226,ry=315] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=4,score_tellraw_dir=4] ~ ~ ~-0.1
execute @p[rym=-44,ry=45] ~ ~ ~ /tp @e[name=RS_Centre,score_tellraw_dir_min=4,score_tellraw_dir=4] ~0.1 ~ ~

execute @e[tag=RS] ~ ~ ~ /function RS:new_angle
execute @e[tag=RS,type=!Player] ~ ~ ~ /function RS:placement

scoreboard players set @e[name=RS_Centre] tellraw_dir 0

