#Import Random10
#@Author: KubbyDev

scoreboard objectives add Random dummy

execute @e[tag=Random] ~ ~ ~ tellraw @a {"text":"I'm an entity with the Random tag, I may cause issues..."}

summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}
summon armor_stand ~ ~ ~ {Tags:[Random]}

scoreboard players add @e[tag=Random] Random 0
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 1
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 2
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 3
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 4
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 5
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 6
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 7
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 8
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 9
scoreboard players set @r[type=armor_stand,tag=Random,score_Random_min=0,score_Random=0] Random 10
