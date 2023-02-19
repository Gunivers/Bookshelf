
tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.vector module..."}]

# Creating test entities
summon armor_stand 0 0 0 {Tags:["bs.unitest"], Invisible:1b, Marker:1b, NoGravity:1b}



#=============================================================================#
#                                                                             #
#                            FAST_NORMALIZE                                   #
#                                                                             #
#=============================================================================#                                                    

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y -2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000

# Normalize
execute as @e[tag=bs.unitest] run function bs.vector:fast_normalize

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 333 run tellraw @a [{"text":"[bs.vector:fast_normalize] expected vx' = 333, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.x"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches -667..-666 run tellraw @a [{"text":"[bs.vector:fast_normalize] expected vy' = -666, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.y"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches 1000 run tellraw @a [{"text":"[bs.vector:fast_normalize] expected vz' = 1000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.z"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.link:create_link_ata] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]

#=============================================================================#
#                                                                             #
#                               NORMALIZE                                     #
#                                                                             #
#=============================================================================#                                                    

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y -2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000

# Normalize
execute as @e[tag=bs.unitest] run function bs.vector:normalize

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 267 run tellraw @a [{"text":"[bs.vector:normalize] expected vx' = 267, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.x"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches -535..-534 run tellraw @a [{"text":"[bs.vector:normalize] expected vy' = -534, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.y"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches 801 run tellraw @a [{"text":"[bs.vector:normalize] expected vz' = 801, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.z"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.link:create_link_ata] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]

#=============================================================================#
#                                                                             #
#                            LENGTH_SQUARED                                   #
#                                                                             #
#=============================================================================#                                                    

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y -2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000

# Normalize
execute as @e[tag=bs.unitest] run function bs.vector:length_squared

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 14000 run tellraw @a [{"text":"[bs.vector:length_squared] expected length^2 = 14000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.link:create_link_ata] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]

#=============================================================================#
#                                                                             #
#                                LENGTH                                       #
#                                                                             #
#=============================================================================#                                                    

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y -2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000

# Normalize
execute as @e[tag=bs.unitest] run function bs.vector:length

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 3741 run tellraw @a [{"text":"[bs.vector:length] expected length = 3741, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.link:create_link_ata] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]



#==============================================================================

kill @e[tag=bs.unitest]