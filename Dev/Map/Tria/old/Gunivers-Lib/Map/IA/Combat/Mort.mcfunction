scoreboard players tag @s add Self
tellraw @a[tag=FRA,score_Id_min=1,score_Id=4] {"text":">>","color":"white","bold":"true","extra":[{"text":" Attention ! ","color":"red","bold":"false"},{"selector":"@s","color":"dark_red"},{"text":" est a terre !","bold":"false","color":"red"}]}
tellraw @a[tag=ENG,score_Id_min=1,score_Id=4] {"text":">>","color":"white","bold":"true","extra":[{"text":" Warning ! ","color":"red","bold":"false"},{"selector":"@s","color":"dark_red"},{"text":" is wounded !","bold":"false","color":"red"}]}
playsound player.death @a[tag=!Self]
tp @s ~ ~-1 ~
effect @s slowness 9999 255 true
effect @s jump_boost 9999 250 true
scoreboard players set @s Health 20
scoreboard players set @s[score_Id_min=1,score_Id=4,type=armor_stand] Health 50
scoreboard players tag @s add Lock1st
scoreboard players tag @s add Dead
scoreboard players tag @s add RevVillager
scoreboard players tag @s remove Reviving
scoreboard players tag @s remove CanRecieveBullet
scoreboard players tag @s[tag=MoveIA] add FinMouvement
scoreboard players tag @s remove Self