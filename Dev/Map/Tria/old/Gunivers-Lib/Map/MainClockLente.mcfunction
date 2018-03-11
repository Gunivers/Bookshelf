#Clock Lente (Activée une fois par seconde)

# Tags des langues
# Oblige les IA a courir vers les joueurs en attente de revive

#Tags des langues
scoreboard players tag @a remove FRA
scoreboard players tag @a remove ENG
execute @e[name=Data,type=armor_stand,tag=ENG] ~ ~ ~ scoreboard players tag @a add ENG
execute @e[name=Data,type=armor_stand,tag=FRA] ~ ~ ~ scoreboard players tag @a add FRA

#Oblige les IA a courir vers les joueurs en attente de revive
scoreboard players tag @e[tag=GoToRevive] add MoveIA
scoreboard players tag @e[tag=GoToRevive] add RunIA
scoreboard players tag @e[tag=ConstantMove] add MoveIA
scoreboard players tag @e[tag=ModeCombat,score_TimerTool3_min=1] remove MoveIA










