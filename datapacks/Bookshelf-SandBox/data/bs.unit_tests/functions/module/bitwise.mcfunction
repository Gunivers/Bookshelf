tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.bitwise module..."}]

summon armor_stand ~ ~ ~ {Tags:["bs.unitest"]}



#=============================================================================#
#                                                                             #
#                          GET_NUMBER_OF_BITS                                 #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 16
execute as @e[tag=bs.unitest] run function bs.bitwise:get_number_of_bits

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 5 run tellraw @a [{"text":"[bs.bistwise:get_number_of_bits] expected nbits(16) = 5, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 -54354
execute as @e[tag=bs.unitest] run function bs.bitwise:get_number_of_bits

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 17 run tellraw @a [{"text":"[bs.bistwise:get_number_of_bits] expected nbits(-54354e-3) = 17, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                              LOGICAL_NOT                                    #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 12
execute as @e[tag=bs.unitest] run function bs.bitwise:not

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 3 run tellraw @a [{"text":"[bs.bistwise:not] expected ~12 = 3, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 452
execute as @e[tag=bs.unitest] run function bs.bitwise:not

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 452 run tellraw @a [{"text":"[bs.bistwise:not] expected ~452 = 59, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                              LOGICAL_OR                                     #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 12
scoreboard players set @e[tag=bs.unitest] bs.var1 5
execute as @e[tag=bs.unitest] run function bs.bitwise:or

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 13 run tellraw @a [{"text":"[bs.bistwise:or] expected 12|5 = 13, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 -9
scoreboard players set @e[tag=bs.unitest] bs.var1 57
execute as @e[tag=bs.unitest] run function bs.bitwise:or

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 63 run tellraw @a [{"text":"[bs.bistwise:or] expected -9|57 = 63, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                            TWO_COMPLEMENT                                   #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 44
execute as @e[tag=bs.unitest] run function bs.bitwise:two_complement

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 24 run tellraw @a [{"text":"[bs.bistwise:two_complement] expected 44 -> 24, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 57
execute as @e[tag=bs.unitest] run function bs.bitwise:two_complement

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 10 run tellraw @a [{"text":"[bs.bistwise:two_complement] expected 57 -> 10, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#
#                                                                             #
#                                  XOR                                        #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 12
scoreboard players set @e[tag=bs.unitest] bs.var1 5
execute as @e[tag=bs.unitest] run function bs.bitwise:or

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 9 run tellraw @a [{"text":"[bs.bistwise:xor] expected 12 ^ 5 = 9, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.var0 -9
scoreboard players set @e[tag=bs.unitest] bs.var1 57
execute as @e[tag=bs.unitest] run function bs.bitwise:or

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.res0 matches 62 run tellraw @a [{"text":"[bs.bistwise:xor] expected -9 ^ 57 = 62, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.res0"}}]

#=============================================================================#

execute as @e[tag=bs.unitest] run function bs.health:safe_kill