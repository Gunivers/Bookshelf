tellraw @a ["",{"text":"<"},{"text":"BookShelf","color":"dark_aqua"},{"text":"> Testing bs.bitwise module..."}]

summon armor_stand ~ ~ ~ {Tags:["bs.unitest"]}


#=============================================================================#
#                                                                             #
#                                  AND                                        #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 12
scoreboard players set @e[tag=bs.unitest] bs.in.1 5
execute as @e[tag=bs.unitest] run function bs.bitwise:and

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 4 run tellraw @a [{"text":"[bs.bistwise:and] expected 12x5 = 4, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
scoreboard players set @e[tag=bs.unitest] bs.in.1 57
execute as @e[tag=bs.unitest] run function bs.bitwise:and

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 49 run tellraw @a [{"text":"[bs.bistwise:and] expected -9x57 = 49, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                          GET_NUMBER_OF_BITS                                 #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 16
execute as @e[tag=bs.unitest] run function bs.bitwise:get_number_of_bits

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 5 run tellraw @a [{"text":"[bs.bistwise:get_number_of_bits] expected nbits(16) = 5, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -54354
execute as @e[tag=bs.unitest] run function bs.bitwise:get_number_of_bits

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 16 run tellraw @a [{"text":"[bs.bistwise:get_number_of_bits] expected nbits(-54354e-3) = 16, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                                  NOT                                        #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
execute as @e[tag=bs.unitest] run function bs.bitwise:not

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 8 run tellraw @a [{"text":"[bs.bistwise:not] expected ~-1 = 8, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 452
execute as @e[tag=bs.unitest] run function bs.bitwise:not

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -453 run tellraw @a [{"text":"[bs.bistwise:not] expected ~452 = -453, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                                  OR                                         #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 12
scoreboard players set @e[tag=bs.unitest] bs.in.1 5
execute as @e[tag=bs.unitest] run function bs.bitwise:or

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 13 run tellraw @a [{"text":"[bs.bistwise:or] expected 12|5 = 13, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
scoreboard players set @e[tag=bs.unitest] bs.in.1 57
execute as @e[tag=bs.unitest] run function bs.bitwise:or

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -1 run tellraw @a [{"text":"[bs.bistwise:or] expected -9|57 = -1, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                            TWO_COMPLEMENT                                   #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 44
execute as @e[tag=bs.unitest] run function bs.bitwise:two_complement

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2147483604 run tellraw @a [{"text":"[bs.bistwise:two_complement] expected 44 -> 2147483604, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
execute as @e[tag=bs.unitest] run function bs.bitwise:two_complement

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 2147483639 run tellraw @a [{"text":"[bs.bistwise:two_complement] expected -9 -> 2147483639, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#
#                                                                             #
#                                  XOR                                        #
#                                                                             #
#=============================================================================#

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 12
scoreboard players set @e[tag=bs.unitest] bs.in.1 5
execute as @e[tag=bs.unitest] run function bs.bitwise:xor

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches 9 run tellraw @a [{"text":"[bs.bistwise:xor] expected 12 ^ 5 = 9, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

# USAGE -----------------------------------------------------------------------

scoreboard players set @e[tag=bs.unitest] bs.in.0 -9
scoreboard players set @e[tag=bs.unitest] bs.in.1 57
execute as @e[tag=bs.unitest] run function bs.bitwise:xor

# RESULTS ----------------------------------------------------------------------

execute as @e[tag=bs.unitest] unless score @s bs.out.0 matches -50 run tellraw @a [{"text":"[bs.bistwise:xor] expected -9 ^ 57 = -50, got ", "color": "red"}, {"score":{"name":"@s","objective":"bs.out.0"}}]

#=============================================================================#

execute as @e[tag=bs.unitest] run function bs.core:entity/safe_kill