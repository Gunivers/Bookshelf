tag @e[tag=bs.view.b0,sort=arbitrary] remove bs.view.b0
tag @e[tag=bs.view.b1,sort=arbitrary] remove bs.view.b1
tag @e[tag=bs.view.b2,sort=arbitrary] remove bs.view.b2
tag @e[tag=bs.view.b3,sort=arbitrary] remove bs.view.b3
tag @e[tag=bs.view.b4,sort=arbitrary] remove bs.view.b4
tag @e[tag=bs.view.b5,sort=arbitrary] remove bs.view.b5
tag @e[tag=bs.view.b6,sort=arbitrary] remove bs.view.b6
tag @e[tag=bs.view.b7,sort=arbitrary] remove bs.view.b7
tag @e[tag=bs.view.bi,sort=arbitrary] remove bs.view.bi

scoreboard players set #view.looked_entity bs.data 0
execute as @e[tag=bs.view.is_lookable,sort=arbitrary] store result score @s bs.data run scoreboard players add #view.looked_entity bs.data 1

tag @e[tag=bs.view.is_lookable,scores={bs.data=128..},sort=arbitrary] add bs.view.b7
scoreboard players remove @e[tag=bs.view.is_lookable,scores={bs.data=128..},sort=arbitrary] bs.data 128
tag @e[tag=bs.view.is_lookable,scores={bs.data=64..},sort=arbitrary] add bs.view.b6
scoreboard players remove @e[tag=bs.view.is_lookable,scores={bs.data=64..},sort=arbitrary] bs.data 64
tag @e[tag=bs.view.is_lookable,scores={bs.data=32..},sort=arbitrary] add bs.view.b5
scoreboard players remove @e[tag=bs.view.is_lookable,scores={bs.data=32..},sort=arbitrary] bs.data 32
tag @e[tag=bs.view.is_lookable,scores={bs.data=16..},sort=arbitrary] add bs.view.b4
scoreboard players remove @e[tag=bs.view.is_lookable,scores={bs.data=16..},sort=arbitrary] bs.data 16
tag @e[tag=bs.view.is_lookable,scores={bs.data=8..},sort=arbitrary] add bs.view.b3
scoreboard players remove @e[tag=bs.view.is_lookable,scores={bs.data=8..},sort=arbitrary] bs.data 8
tag @e[tag=bs.view.is_lookable,scores={bs.data=4..},sort=arbitrary] add bs.view.b2
scoreboard players remove @e[tag=bs.view.is_lookable,scores={bs.data=4..},sort=arbitrary] bs.data 4
tag @e[tag=bs.view.is_lookable,scores={bs.data=2..},sort=arbitrary] add bs.view.b1
scoreboard players remove @e[tag=bs.view.is_lookable,scores={bs.data=2..},sort=arbitrary] bs.data 2
tag @e[tag=bs.view.is_lookable,scores={bs.data=1..},sort=arbitrary] add bs.view.b0
scoreboard players reset @e[tag=bs.view.is_lookable,sort=arbitrary] bs.data
tag @e[tag=bs.view.is_lookable,sort=arbitrary] add bs.view.bi
