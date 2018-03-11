#Actions quand une balle touche une entité
scoreboard players operation @s Health -= @s Damage

execute @s[score_Team_min=1,score_Team=1] ~ ~1.2 ~ scoreboard players tag @e[tag=Bullet,score_Team_min=2,score_Team=2,r=1] add BulletHit
execute @s[score_Team_min=2,score_Team=2] ~ ~1.2 ~ scoreboard players tag @e[tag=Bullet,score_Team_min=1,score_Team=1,r=1] add BulletHit

execute @e[tag=BulletHit] ~ ~ ~ particle blockcrack ~ ~ ~ 0 0 0 0 15 force @a 152
kill @e[tag=BulletHit]