#Detecte si un vaisseau entre en collision avec un autre vaisseau ou un bloc
scoreboard players tag @s add Self
scoreboard players tag @s add Explode
execute @s ~ ~ ~ detect ~ ~1 ~ air 0 scoreboard players tag @s remove Explode
execute @s[tag=!MissileAuto] ~ ~ ~ execute @e[tag=TestCrash] ~ ~ ~ execute @s[tag=!Self] ~ ~ ~ scoreboard players remove @e[tag=Self,score_Team_min=2,score_Team=2,r=2] Health 20
scoreboard players tag @s[tag=Explode] add BigExpl
scoreboard players tag @e remove Self
