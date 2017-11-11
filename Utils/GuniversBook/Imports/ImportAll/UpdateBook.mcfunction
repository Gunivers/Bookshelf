# NAME: Imports Tests
# PATH: Gunivers-Lib:GuniversBook/Imports/Test
 
# AUTHOR: KubbyDev
 
# VERSION: 1.0
# MINECRAFT: 1.12.1 
 
# REQUIEREMENTS: 
# 
 
# INPUT: 
# 
 
# OUTPUT: 
# - Tags on 2 area_effect_cloud
 
# NOTE:  
# 

# CONFIGURATION:
 
# CODE:
scoreboard players tag @p add HaveBook {Inventory:[{id:"minecraft:written_book",Damage:0s,tag:{title:"Gunivers-Lib"}}]}
clear @a[tag=HaveBook]
execute @a[tag=HaveBook] ~ ~ ~ function Gunivers-Lib:GuniversBook/Give
scoreboard players tag @a[tag=HaveBook] remove HaveBook



