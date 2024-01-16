
tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.vector module..."}]

# Creating test entities
summon armor_stand 0 0 0 {Tags:["bs.unitest"], Invisible:1b, Marker:1b, NoGravity:1b}

#=============================================================================#
#                                                                             #
#                               GET_ATA                                       #
#                                                                             #
#=============================================================================#                                                    

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

summon armor_stand 5 -6 0.833 {Tags:["bs.unitest","target"], Invisible:1b, Marker:1b, NoGravity:1b}

# USAGE -----------------------------------------------------------------------

# Normalize
execute as @e[tag=bs.unitest,tag=!target] at @e[tag=bs.unitest,tag=target] run function bs.vector:get_ata

# RESULTS ----------------------------------------------------------------------

kill @e[tag=bs.unitest,tag=target]

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 5000 run tellraw @a [{"text":"[bs.vector:get_ata] expected vx = 5000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.x"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches -6000 run tellraw @a [{"text":"[bs.vector:get_ata] expected vy = -6000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.y"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches 333 run tellraw @a [{"text":"[bs.vector:get_ata] expected vz = 333, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.z"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.vector:get_ata] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]


#=============================================================================#
#                                                                             #
#                          GET_BY_ORIENTATION                                 #
#                                                                             #
#=============================================================================#                                                    

# SETUP -----------------------------------------------------------------------

scoreboard players set NB_ENTITY_DIFF bs.unit_tests 0
execute as @e run scoreboard players remove NB_ENTITY_DIFF bs.unit_tests 1

# USAGE -----------------------------------------------------------------------

execute as @e[tag=bs.unitest] run tp @s ~ ~ ~ 145 -45
execute as @e[tag=bs.unitest] run function bs.vector:get_from_orientation

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches -406..-405 run tellraw @a [{"text":"[bs.vector:get_from_orientation] expected vx = -406, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.x"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches 707 run tellraw @a [{"text":"[bs.vector:get_from_orientation] expected vy = 707, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.y"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches -580..-579 run tellraw @a [{"text":"[bs.vector:get_from_orientation] expected vz = -579, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.z"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.vector:get_from_orientation] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]

#=============================================================================#
#                                                                             #
#                          CANONICAL_TO_LOCAL                                 #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.vector.x 1000
scoreboard players set @e[tag=bs.unitest] bs.vector.y 2000
scoreboard players set @e[tag=bs.unitest] bs.vector.z 3000
execute as @e[tag=bs.unitest] run tp @s ~ ~ ~ 145 -45
execute as @e[tag=bs.unitest] run function bs.vector:canonical_to_local

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 902 run tellraw @a [{"text":"[bs.vector:canonical_to_local] expected x' = 902, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.x"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches 3541 run tellraw @a [{"text":"[bs.vector:canonical_to_local] expected y' = 3541, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.y"}}]
execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches -721 run tellraw @a [{"text":"[bs.vector:canonical_to_local] expected z' = -721, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.z"}}]

#=============================================================================#
#                                                                             #
#                           LOCAL_TO_CANONICAL                                #
#                                                                             #
#=============================================================================#

### TO IMPLEMENT

# USAGE -----------------------------------------------------------------------

# scoreboard players set @e[tag=bs.unitest] bs.vector.x 902
# scoreboard players set @e[tag=bs.unitest] bs.vector.y 3541
# scoreboard players set @e[tag=bs.unitest] bs.vector.z -721
# execute as @e[tag=bs.unitest] run tp @s ~ ~ ~ 145 -45
# execute as @e[tag=bs.unitest] run function bs.vector:local_to_canonical

# RESULTS ----------------------------------------------------------------------

# execute as @e[tag=bs.unitest] unless score @s bs.vector.x matches 1000 run tellraw @a [{"text":"[bs.vector:local_to_canonical] expected x' = 1000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.x"}}]
# execute as @e[tag=bs.unitest] unless score @s bs.vector.y matches 2000 run tellraw @a [{"text":"[bs.vector:local_to_canonical] expected y' = 2000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.y"}}]
# execute as @e[tag=bs.unitest] unless score @s bs.vector.z matches 3000 run tellraw @a [{"text":"[bs.vector:local_to_canonical] expected z' = 3000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.vector.z"}}]


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
execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 3000 run tellraw @a [{"text":"[bs.vector:fast_normalize] expected A = 3000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.vector:fast_normalize] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]

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
execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 3741 run tellraw @a [{"text":"[bs.vector:normalize] expected A = 3741, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.vector:normalize] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]

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

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 14000 run tellraw @a [{"text":"[bs.vector:length_squared] expected length^2 = 14000, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.vector:length_squared] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]

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

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 3741 run tellraw @a [{"text":"[bs.vector:length] expected length = 3741, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

execute as @e run scoreboard players add NB_ENTITY_DIFF bs.unit_tests 1
execute unless score NB_ENTITY_DIFF bs.unit_tests matches 0 run tellraw @a [{"text":"[bs.vector:length] entity count changed. Diff: ", "color": "red"}, {"score":{"name":"NB_ENTITY_DIFF","objective":"bs.unit_tests"}}]



#==============================================================================

kill @e[tag=bs.unitest]