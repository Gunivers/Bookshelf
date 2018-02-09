
# SYSTEME CLOCK
# Fonction principale de l'enchainement des autres fonctions.
# by Luludatra

# -------------------------------------------------------------

gamerule maxCommandChainLength 99999999
gamerule sendCommandFeedback false

scoreboard objectives add step dummy
scoreboard objectives add list dummy
scoreboard objectives add tellraw_angle dummy
scoreboard objectives add tellraw_dir dummy

scoreboard teams add RS
scoreboard teams add Curseur_Select
scoreboard teams add Curseur_NoSelect
scoreboard teams add RS_Centre

scoreboard teams option RS color green
scoreboard teams option Curseur_NoSelect color yellow
scoreboard teams option Curseur_Select color dark_green
scoreboard teams option RS_Centre color gold

# -------------------------------------------------------------

execute @e[name=RS_Centre] ~ ~ ~ /execute @e[name=RS_Spawn] ~ ~ ~ /function RS:tellraw/tellraw
execute @e[name=RS_Centre] ~ ~ ~ /kill @e[name=RS_Spawn]

execute @e[name=RS_Spawn] ~ ~ ~ /summon Armor_Stand ~ ~ ~ {CustomName:"RS_Centre",Small:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:gold_block,Damage:0s,Count:1b}],DisabledSlots:2039583,Marker:1b}
execute @e[name=RS_Spawn] ~ ~ ~ /scoreboard players set @e[name=RS_Centre,c=1] id 9
execute @e[name=RS_Spawn] ~ ~ ~ /scoreboard players set @e[name=RS_Centre,c=1] step 0
tp @e[name=RS_Spawn] ~ ~-300 ~
kill @e[name=RS_Spawn]

# -------------------------------------------------------------

execute @e[name=RS_Centre,score_step_min=0,score_step=0] ~ ~ ~ /function RS:tellraw/tellraw

scoreboard players set @e[name=RS_Centre,score_step_min=0,score_step=0] step 1

# -------------------------------------------------------------

scoreboard teams empty RS
scoreboard teams join RS @e[tag=RS]

scoreboard teams empty Curseur_NoSelect
execute @e[name=RS_Centre,score_step_min=1,score_step=1] ~ ~ ~ /scoreboard teams join Curseur_NoSelect @e[score_list_min=1,score_list=1,tag=!RS]

scoreboard teams empty Curseur_Select
execute @e[name=RS_Centre,score_step_min=1,score_step=1] ~ ~ ~ /scoreboard teams join Curseur_Select @e[score_list_min=1,score_list=1,tag=RS]

scoreboard players set @e[tag=RS] id 9

# Glowing
effect @e[score_list_min=1,score_list=1] minecraft:glowing 1 1 true
effect @e[tag=RS] minecraft:glowing 1 1 true
effect @e[name=RS_Centre] minecraft:glowing 1 1 true

scoreboard teams join RS_Centre @e[name=RS_Centre]

effect @e[tag=!RS,score_list_min=2] clear
effect @e[tag=!RS,score_list=0] clear

# -------------------------------------------------------------
# New Angle

execute @e[name=RS_Centre,score_step_min=2,score_step=2,score_tellraw_angle=-1] ~ ~ ~ /function RS:placement/new_angle
execute @e[name=RS_Centre,score_step_min=2,score_step=2,score_tellraw_angle_min=1] ~ ~ ~ /function RS:placement/new_angle

# New Direction

execute @e[name=RS_Centre,score_step_min=2,score_step=2,score_tellraw_dir_min=1] ~ ~ ~ /function RS:placement/deplacement


# --- ERREUR ----------------------------------------------------------

execute @e[type=Armor_Stand,score_new_angle=-1] ~ ~ ~ /function RS:erreur









