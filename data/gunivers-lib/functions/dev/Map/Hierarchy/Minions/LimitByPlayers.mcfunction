scoreboard players tag @s add Self

#Compte le nombre de joueurs par team
scoreboard players set @s Tmp2 0
execute @s[team=Blue] ~ ~ ~ execute @a[team=Blue,score_InGame_min=1] ~ ~ ~ scoreboard players add @e[tag=Self] Tmp2 1
execute @s[team=Orange] ~ ~ ~ execute @a[team=Orange,score_InGame_min=1] ~ ~ ~ scoreboard players add @e[tag=Self] Tmp2 1

#Détermine si il faut kill ou summon des minions
scoreboard players operation @s Tmp2 *= 2 Constant
scoreboard players operation @s Tmp2 -= @s Tmp

scoreboard players tag @s remove Self