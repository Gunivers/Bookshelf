tag @n[tag=bs.view.b0,sort=arbitrary,limit=255] remove bs.view.b0
tag @n[tag=bs.view.b1,sort=arbitrary,limit=255] remove bs.view.b1
tag @n[tag=bs.view.b2,sort=arbitrary,limit=255] remove bs.view.b2
tag @n[tag=bs.view.b3,sort=arbitrary,limit=255] remove bs.view.b3
tag @n[tag=bs.view.b4,sort=arbitrary,limit=255] remove bs.view.b4
tag @n[tag=bs.view.b5,sort=arbitrary,limit=255] remove bs.view.b5
tag @n[tag=bs.view.b6,sort=arbitrary,limit=255] remove bs.view.b6
tag @n[tag=bs.view.b7,sort=arbitrary,limit=255] remove bs.view.b7
tag @n[tag=bs.view.bi,sort=arbitrary,limit=255] remove bs.view.bi

scoreboard players set #view.looked_entity bs.data 0
execute as @n[tag=bs.view.is_lookable,sort=arbitrary,limit=255] store result score @s bs.data run scoreboard players add #view.looked_entity bs.data 1

tag @n[tag=bs.view.is_lookable,scores={bs.data=128..},sort=arbitrary,limit=255] add bs.view.b7
scoreboard players remove @n[tag=bs.view.is_lookable,scores={bs.data=128..},sort=arbitrary,limit=255] bs.data 128
tag @n[tag=bs.view.is_lookable,scores={bs.data=64..},sort=arbitrary,limit=255] add bs.view.b6
scoreboard players remove @n[tag=bs.view.is_lookable,scores={bs.data=64..},sort=arbitrary,limit=255] bs.data 64
tag @n[tag=bs.view.is_lookable,scores={bs.data=32..},sort=arbitrary,limit=255] add bs.view.b5
scoreboard players remove @n[tag=bs.view.is_lookable,scores={bs.data=32..},sort=arbitrary,limit=255] bs.data 32
tag @n[tag=bs.view.is_lookable,scores={bs.data=16..},sort=arbitrary,limit=255] add bs.view.b4
scoreboard players remove @n[tag=bs.view.is_lookable,scores={bs.data=16..},sort=arbitrary,limit=255] bs.data 16
tag @n[tag=bs.view.is_lookable,scores={bs.data=8..},sort=arbitrary,limit=255] add bs.view.b3
scoreboard players remove @n[tag=bs.view.is_lookable,scores={bs.data=8..},sort=arbitrary,limit=255] bs.data 8
tag @n[tag=bs.view.is_lookable,scores={bs.data=4..},sort=arbitrary,limit=255] add bs.view.b2
scoreboard players remove @n[tag=bs.view.is_lookable,scores={bs.data=4..},sort=arbitrary,limit=255] bs.data 4
tag @n[tag=bs.view.is_lookable,scores={bs.data=2..},sort=arbitrary,limit=255] add bs.view.b1
scoreboard players remove @n[tag=bs.view.is_lookable,scores={bs.data=2..},sort=arbitrary,limit=255] bs.data 2
tag @n[tag=bs.view.is_lookable,scores={bs.data=1..},sort=arbitrary,limit=255] add bs.view.b0
scoreboard players reset @n[tag=bs.view.is_lookable,sort=arbitrary,limit=255] bs.data
tag @n[tag=bs.view.is_lookable,sort=arbitrary,limit=255] add bs.view.bi
